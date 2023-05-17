<template>
    <div class="mobile-menu-btn-div" v-click-away="closeMenu">
        <div class="menu-btn-icon-div">
            <img :src="menuIcon" 
            class="mobile-menu-btn"
            v-on:click="toggleMenu"
            >
        </div>
        
        <div v-if="getShowMenu && this.sharedState.showMenu == undefined" class="mobile-menu">




        <div v-for="(item, index) in getMenuButtons" 
            v-bind:key="item.index"
        >
        <mobile-menu-drop-down 
                :menuItem="item"
                :hasSubMenu="hasSubMenu(item)"
                @close-menu="closeMenu()"
            >
            <div v-if="hasSubMenu(item)">
            <mobile-menu-dropdown-content >
            
                <div v-for="subMenuItem in getSubmenu"
                    v-bind:key="subMenuItem"
                >
                    <mobile-menu-dropdown-item      
                            :subMenuItem="subMenuItem.name"
                            :subMenuRoute="item.submenu_route" 
                            @close-menu="closeMenu()"
                            v-if="subMenuItem.menu_item_id == index + 1 "
                        >
                        {{subMenuItem.name}}
                    </mobile-menu-dropdown-item>
                </div>
                </mobile-menu-dropdown-content>
            
            </div>
        </mobile-menu-drop-down>
    </div>

    </div>

    </div>
</template>

<script>
import mobileMenu from '../../../assets/mobileMenu.png';
import MobileMenuDropDown from './MobileMenuDropDown.vue';
import {getMenuItems, getSubMenuItems} from '../../../services/MenuService';

import MobileMenuDropdownItem from './MobileMenuDropdownItem.vue';
import MobileMenuDropdownContent from './MobileMenuDropdownContent.vue';

import { mixin as VueClickAway } from "vue3-click-away";

export default {
  components: { MobileMenuDropDown, MobileMenuDropdownItem, MobileMenuDropdownContent },
    name: 'mobile-menu-btn',
    inject: ["sharedState"],
    mixins: [VueClickAway],
    provide() {
        return {
            sharedState: this.sharedState
        };
    },
    data() {
        return {
            menuIcon: mobileMenu,
            showMenu: false,
            showItemSubMenu: true,
            menuButtons: [],
            submenu: [],
            sharedState: {
                active: false,
                showMenu: this.showMenu
            }
        }
    },
    methods: {
        toggleMenu() {
            console.log(this.sharedState)
            this.showMenu == true ? this.showMenu = false : this.showMenu = true;
        },
        hasSubMenu(item) {
            return item.submenu_route !== null
            ? true
            : false
        },
        closeMenu(value) {
            console.log(value)
            this.showMenu = false;
        },
        toggleMenuOff() {
            this.showMenu = false;
        }
    },
    computed: {
        getMenuButtons() {
            return this.menuButtons;
        },
        getSubmenu() {
            return this.submenu;
        },
        getSharedState() {
            return this.sharedState;
        },
        getShowMenu() {
            return this.showMenu;
        }
    },
    created() {
        console.log("CREATED MENU COMPONENT NOW");
        getMenuItems()
                .then(response => {
                    console.log("RESPONSE HERE")
                    console.log(response)
                    this.menuButtons = response;
                });
        
        for (let i = 2; i <= 3; i++) {

            let message = {
                buttonId: i
            }

            getSubMenuItems(message)
                .then(response => {
                    console.log("GET SUB MENU ITEMS RESPONSE")

                    response.forEach((item) => {
                        console.log(item)
                        this.submenu.push(item)
                    })
                    });
        }
    }
}
</script>

<style>

.mobile-menu-btn-div {
    height: fit-content;
    margin: 0px;
}

.menu-btn-icon-div {
    display: flex;
    align-content: center;
    height: 100%;
}

.mobile-menu-btn {
    height: 50px;
    width: 60px;
    cursor: pointer;
    margin: auto 10px;
}

</style>