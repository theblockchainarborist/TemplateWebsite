<template>
<nav class="main-menu-nav">
    <div v-for="item in getMenuItems" 
            v-bind:key="item.index"
        >
        <menu-dropdown 
                :menuItem="item"
                :hasSubMenu="hasSubMenu(item)"
            >
            <menu-dropdown-content>
                <div v-for="subMenuItem in item.subMenuOptions"
                    v-bind:key="subMenuItem"
                >
                    <menu-dropdown-item
                            :subMenuItem="subMenuItem"
                            :subMenuRoute="item.subMenuRoute"
                        >
                        {{subMenuItem}}
                    </menu-dropdown-item>
                </div>
            </menu-dropdown-content>
        </menu-dropdown>
    </div>
</nav>
</template>

<script>
import MenuData from '../../data/MenuData.json';
import MenuDropdown from '../menu/MenuDropdown.vue';
import MenuDropdownContent from './MenuDropdownContent.vue';
import MenuDropdownItem from './MenuDropdownItem.vue';
import Menu from './Menu.css';


export default {
  components: { MenuDropdown, MenuDropdownContent, MenuDropdownItem },
    name: "menu-component",
    data() {
        return {

        }
    },
    methods: {
        testClick() {
            console.log("TEST RUNNING")
            console.log(MenuData.menuItems);
        },
        hasSubMenu(item) {
            return item.subMenuOptions.length > 0 
                ? true
                : false;
        }
    },
    computed: {
        getMenuItems() {
            return MenuData.menuItems;
        },
        
    }
}
</script>

<style>

</style>