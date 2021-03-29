<template>
  <div>
    <input id="hamburger-toggle" type="checkbox">
    <label for="hamburger-toggle" class="hamburger">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </label>
    <div class="side-nav">
      <div class="title">
        <router-link to="/student-dashboard"><img src="@/assets/images/N60-2Stack-W.png" alt="NW 2Stack White"></router-link>
      </div>
      <ul class="bar-items">
        <router-link
          v-for="item in items"
          :key="item.title"
          :to="item.url"
          v-slot="{ href, navigate, isActive }"
        >
            <li
                :class="[isActive && 'router-link-active']"
            >
                <a :href="href" @click="navigate">{{ item.title }}</a>
                <ul v-if="isActive && item.subitems">
                    <li v-for="subitem in item.subitems" :key="subitem.title">
                      <router-link :to="subitem.url">{{ subitem.title }}</router-link>
                    </li>
                </ul>
            </li>
        </router-link>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    items: [
      {
        title: 'Internship Add Form',
        url: '/student-internship-add-form',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-add-form/past-forms' },
          { title: 'Start New Form', url: '/student-internship-add-form' }
        ]
      },
      {
        title: 'Internship Application',
        url: '/student-internship-application',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-application/past-forms' },
          { title: 'Start New Form', url: '/student-internship-application' }
        ]
      },
      { title: 'Student Dashboard', url: '/student-dashboard' },
      {
        title: 'Internship Agreement',
        url: '/student-internship-agreement',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-agreement/past-forms' },
          { title: 'Start New Form', url: '/student-internship-agreement' }
        ]
      }
    ]
  })
}
</script>

<style lang="scss">
</style>
