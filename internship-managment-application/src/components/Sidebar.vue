<template>
    <div class="Sidebar">
        <div class="title">
            <img src="@/assets/nw-logo.png" alt="NW_logo" width="140" height="140">
        </div>
        <div class="bar-items">
            <router-link to="/student-internship-add-form" active-class="active" exact tag="button" class="side-btn">
                <div class="link-container">
                    Internship Add Form
                </div>
            </router-link>
          <router-link to="/student-internship-application" active-class="active" exact  tag="button" class="side-btn">
                <div class="link-container">
                    Internship Application
                </div>
            </router-link>
          <router-link to="/student-review-status" active-class="active" exact tag="button" class="side-btn">
                <div class="link-container">
                    Review Status
                </div>
            </router-link>
          <router-link to="/student-internship-agreement" active-class="active" exact tag="button" class="side-btn">
                <div class="link-container">
                    Internship Agreement
                </div>
            </router-link>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style lang="scss">
    .Sidebar{
        background-color: #006746;
        margin-top: -90px;
        margin-bottom: -15px;
        margin-left: -10px;
    }
    .title{
        margin-top: 15px;
    }
    .bar-items{
        display: flex;
        flex-direction: column;
        margin-top: 15px;
    }

    .bar-items > * {
        margin-top: 10px;
    }

    .side-btn:focus{
        outline: none;
    }

    .side-btn.active{
        background-color: rgb(15, 58, 15);
        color: white;
        font-weight: 800;
    }

    .side-btn{
        border: none;
        padding: 5px 0px;
        cursor: pointer;
        font-size: 14px;
        color: white;
        background-color: transparent;
    }
</style>
