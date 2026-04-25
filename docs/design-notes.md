<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Project</h2>
<p class="font-claude-response-body break-words whitespace-normal leading-[1.7]">Jekyll-based gardening blog for <strong>quarteracrewonderland.com</strong>, focused on gardening in western Colorado (Western Slope). A project stub already exists; this document captures the visual design direction and next steps.</p>
<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Visual Reference</h2>
<p class="font-claude-response-body break-words whitespace-normal leading-[1.7]"><strong>Primary inspiration:</strong> <a class="underline underline underline-offset-2 decoration-1 decoration-current/40 hover:decoration-current focus:decoration-current" href="https://www.onions-usa.org/">onions-usa.org</a></p>
<p class="font-claude-response-body break-words whitespace-normal leading-[1.7]">Key characteristics to emulate:</p>
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Large, edge-to-edge photo previews for blog posts featured prominently on the home page</li>
<li class="whitespace-normal break-words pl-2">Editorial / food-and-lifestyle magazine feel</li>
<li class="whitespace-normal break-words pl-2">Dropdown menu for categories and landing pages</li>
<li class="whitespace-normal break-words pl-2">Minimal chrome, photography-forward layout</li>
<li class="whitespace-normal break-words pl-2">Clean typography with clear hierarchy</li>
</ul>
<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Theme / Build Options Considered</h2>
<h3 class="text-text-100 mt-2 -mb-1 text-base font-bold">1. Fork an existing Jekyll theme (fastest path)</h3>
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2"><strong>Mediumish</strong> (<code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">wowthemesnet/mediumish-theme-jekyll</code>) — Medium-style card grid with big featured images, category pages, author pages. MIT licensed. Closest out-of-the-box match to the desired look.</li>
<li class="whitespace-normal break-words pl-2"><strong>Jasper2</strong> — Jekyll port of Ghost&#x27;s Casper theme. Huge hero image on each post, clean typography, card-based index. Strong &quot;editorial lifestyle blog&quot; feel.</li>
<li class="whitespace-normal break-words pl-2"><strong>Minimal Mistakes</strong> (<code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">mmistakes/minimal-mistakes</code>) — Most flexible. Ships with <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">splash</code> and grid/collection layouts and supports dropdown navigation natively via <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">_data/navigation.yml</code>. Best long-term flexibility but requires more customization to look photo-forward.</li>
<li class="whitespace-normal break-words pl-2"><strong>Type on Strap</strong> — Clean middle ground, image-friendly, supports tag/category landing pages.</li>
</ul>
<h3 class="text-text-100 mt-2 -mb-1 text-base font-bold">2. Build custom on top of a minimal theme</h3>
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Layer <strong>TailwindCSS</strong> (via <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">jekyll-postcss</code> or a simple npm build step) onto the existing stub</li>
<li class="whitespace-normal break-words pl-2">Use Tailwind&#x27;s <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">aspect-ratio</code>, <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">grid</code>, and typography plugins for the card homepage</li>
<li class="whitespace-normal break-words pl-2">Custom layouts needed: <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">home.html</code> (hero + featured grid), <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">post.html</code> (full-bleed header image), <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">category.html</code> (per-category landing page), <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">page.html</code></li>
<li class="whitespace-normal break-words pl-2">Dropdown nav driven by <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">_data/navigation.yml</code> with nested items, rendered via an include, with vanilla JS or Alpine.js for the toggle</li>
</ul>
<h3 class="text-text-100 mt-2 -mb-1 text-base font-bold">3. Hybrid (recommended)</h3>
<p class="font-claude-response-body break-words whitespace-normal leading-[1.7]">Fork <strong>Mediumish</strong> or <strong>Jasper2</strong> as the base, then gradually replace pieces with custom styling as the Quarter Acre Wonderland brand (colors, type, logo treatment) develops. Ships something beautiful on day one and avoids CSS-tweaking paralysis before posts are written.</p>
<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Decisions Still Open</h2>
<ul class="contains-task-list">
<li class="task-list-item"><input type="checkbox" disabled=""/> <strong>Homepage style</strong>: chronological (newest posts as big cards) vs. curated (featured posts + category grid like onions-usa.org)<!-- -->
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Chronological → Mediumish is stronger</li>
<li class="whitespace-normal break-words pl-2">Curated → Minimal Mistakes or custom is stronger</li>
</ul>
</li>
<li class="task-list-item"><input type="checkbox" disabled=""/> <strong>Category landing pages</strong>: styled hero + intro per category, or auto-generated lists?<!-- -->
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Planned categories (draft): Vegetables, Perennials, Tool Reviews, Seasonal, Western Slope Specific</li>
</ul>
</li>
<li class="task-list-item"><input type="checkbox" disabled=""/> <strong>Brand identity</strong>: colors, typography, logo treatment — not yet defined</li>
<li class="task-list-item"><input type="checkbox" disabled=""/> <strong>Chosen theme / approach</strong>: <em>fill in once decided</em></li>
</ul>
<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Image Pipeline (do this early regardless of theme)</h2>
<p class="font-claude-response-body break-words whitespace-normal leading-[1.7]">Large photos are core to the content, so set up responsive image handling before publishing posts:</p>
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Install <strong><code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">jekyll-picture-tag</code></strong> (or equivalent) to auto-generate responsive + WebP versions</li>
<li class="whitespace-normal break-words pl-2">Decide on source image dimensions and storage location (<code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">assets/images/posts/</code>?)</li>
<li class="whitespace-normal break-words pl-2">Consider a lightweight lazy-loading strategy for the home page grid</li>
</ul>
<h2 class="text-text-100 mt-3 -mb-1 text-[1.125rem] font-bold">Suggested Next Steps for Claude Code Session</h2>
<ol class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-decimal flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Inspect the existing repo structure (<code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">_config.yml</code>, <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">Gemfile</code>, current layouts/includes)</li>
<li class="whitespace-normal break-words pl-2">Based on the chosen approach above, either:<!-- -->
<ul class="[li_&amp;]:mb-0 [li_&amp;]:mt-1 [li_&amp;]:gap-1 [&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc flex flex-col gap-1 pl-8 mb-3">
<li class="whitespace-normal break-words pl-2">Fork/install the selected theme and wire it into the existing stub, or</li>
<li class="whitespace-normal break-words pl-2">Scaffold custom <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">home.html</code>, <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">post.html</code>, <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">category.html</code> layouts and a <code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">_data/navigation.yml</code> with dropdown support</li>
</ul>
</li>
<li class="whitespace-normal break-words pl-2">Set up the image pipeline (<code class="bg-text-200/5 border border-0.5 border-border-300 text-danger-000 whitespace-pre-wrap rounded-[0.4rem] px-1 py-px text-[0.9rem]">jekyll-picture-tag</code> or similar)</li>
<li class="whitespace-normal break-words pl-2">Create one real post with a hero image to validate the layout end-to-end</li>
<li class="whitespace-normal break-words pl-2">Stub out category landing pages for the planned categories</li>
</ol>