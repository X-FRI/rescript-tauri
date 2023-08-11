open Dialog

Test.test(
  "Dialog.ConfirmDialogOptions.make",
  "true",
  ConfirmDialogOptions.confirm("hello", "AAAA")->Promise.thenResolve(boolean =>
    Js.String.make(boolean)
  ),
)
