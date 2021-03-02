// vue.config.js

/**
 * @type {import('@vue/cli-service').ProjectOptions}
 */
module.exports = {
    // options...
    css: {
        loaderOptions: {
            sass: {
                prependData: `
                @import "@/assets/scss/styles.scss";
                `
            }
        }
    }
};