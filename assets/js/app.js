(function () {
  const log = document.getElementById("demoLog");
  const save = document.getElementById("saveLog");
  const clear = document.getElementById("clearLog");

  document.querySelectorAll("[data-copy]").forEach((button) => {
    button.addEventListener("click", async () => {
      const command = button.getAttribute("data-copy");
      try {
        await navigator.clipboard.writeText(command);
        const old = button.textContent;
        button.textContent = "Copied";
        setTimeout(() => (button.textContent = old), 1200);
      } catch (err) {
        alert("Copy failed. Select the command manually.");
      }
    });
  });

  if (log) {
    log.value = localStorage.getItem("bcbc-agent-control-demo-log") || "";
  }

  if (save && log) {
    save.addEventListener("click", () => {
      localStorage.setItem("bcbc-agent-control-demo-log", log.value);
      save.textContent = "Saved";
      setTimeout(() => (save.textContent = "Save locally"), 1200);
    });
  }

  if (clear && log) {
    clear.addEventListener("click", () => {
      if (!confirm("Clear the demo output log in this browser?")) return;
      log.value = "";
      localStorage.removeItem("bcbc-agent-control-demo-log");
    });
  }
})();
