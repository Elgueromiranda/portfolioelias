(() => {
  // app/javascript/navbar.js
  $(".navTrigger").click(function() {
    $(this).toggleClass("active");
    console.log("Clicked menu");
    $("#mainListDiv").toggleClass("show_list");
    $("#mainListDiv").fadeIn();
  });
})();
//# sourceMappingURL=assets/navbar.js.map
