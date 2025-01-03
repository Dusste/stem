import { defineConfig } from "vite";
import adapter from "./adapters/express/adapter.mjs";
import formsPlugin from "@tailwindcss/forms";

export default {
  vite: defineConfig({}),
  adapter,
  plugins: [formsPlugin],
  headTagsTemplate(context) {
    return `
<link rel="stylesheet" href="/style.css" />
<link href="/tailwind.build.css" rel="stylesheet" type="text/css" />
<meta name="generator" content="elm-pages v${context.cliVersion}" />
`;
  },
  preloadTagForFile(file) {
    // add preload directives for JS assets and font assets, etc., skip for CSS files
    // this function will be called with each file that is procesed by Vite, including any files in your headTagsTemplate in your config
    return !file.endsWith(".css");
  },
};
