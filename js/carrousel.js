async function initCarrousel(folder, appName) {
  const track = document.getElementById("screenshotsTrack");
  const previousButton = document.querySelector(".carousel-previous");
  const nextButton = document.querySelector(".carousel-next");
  if (!track) return;
  try {
    const response = await fetch(`${folder}/screenshots.json`);
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const screenshots = await response.json();
    screenshots.forEach((filename) => {
      const img = document.createElement("img");
      img.src = `${folder}/${filename}`;
      img.alt = `Capture d'écran ${appName}`;
      img.loading = "lazy";
      track.appendChild(img);
    });
    const scrollOneScreenshot = (direction) => {
      const firstImage = track.querySelector("img");
      if (!firstImage) return;
      const gap = parseFloat(getComputedStyle(track).gap) || 0;
      track.scrollBy({
        left: direction * (firstImage.getBoundingClientRect().width + gap),
        behavior: "smooth",
      });
    };
    previousButton?.addEventListener("click", () => scrollOneScreenshot(-1));
    nextButton?.addEventListener("click", () => scrollOneScreenshot(1));
  } catch (error) {
    console.error(`Impossible de charger les captures d'écran ${appName} :`, error);
  }
}