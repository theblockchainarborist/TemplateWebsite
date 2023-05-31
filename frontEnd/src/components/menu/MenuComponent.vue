<template>
<nav class="main-menu-nav">
    <div v-for="(item, index) in getMenuButtons" 
            v-bind:key="item.index"
        >
        <menu-dropdown 
                :menuItem="item"
                :hasSubMenu="hasSubMenu(item)"
            >
            <menu-dropdown-content>
                <div v-for="subMenuItem in getSubmenu"
                    v-bind:key="subMenuItem"
                >
                    <menu-dropdown-item
                            :subMenuItem="subMenuItem.name"
                            :subMenuRoute="item.submenu_route"
                            v-if="subMenuItem.menu_item_id == index + 1 "
                        >
                        {{subMenuItem.name}}
                    </menu-dropdown-item>
                </div>
            </menu-dropdown-content>
        </menu-dropdown>
    </div>
</nav>
</template>

<script>
import MenuDropdown from '../menu/MenuDropdown.vue';
import MenuDropdownContent from './MenuDropdownContent.vue';
import MenuDropdownItem from './MenuDropdownItem.vue';
import Menu from './Menu.css';


import {getMenuItems, getSubMenuItems} from '../../services/MenuService';


export default {
  components: { MenuDropdown, MenuDropdownContent, MenuDropdownItem },
    name: "menu-component",
    data() {
        return {
            menuButtons: [],
            submenu: []
        }
    },
    methods: {
        hasSubMenu(item) {
            return item.submenu_route !== null
            ? true
            : false
        }
    },
    computed: {
        getMenuButtons() {
            return this.menuButtons;
        },
        getSubmenu() {
            
            return this.submenu;
        }
        
    },
    created() {
        getMenuItems()
                .then(response => {
                    console.log(response)
                    this.menuButtons = response;
                });
        

        for (let i = 2; i <= 3; i++) {

            let message = {
                buttonId: i
            }

            getSubMenuItems(message)
                .then(response => {
                    response.forEach((item) => {
                        this.submenu.push(item)
                    })
                    });
        }
    }
}
</script>

<style>

</style>