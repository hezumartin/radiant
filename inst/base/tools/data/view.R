#############################################
# View table output of the selected dataset
#############################################
output$ui_view_vars <- renderUI({
  vars <- varnames()
  selectInput("view_vars", "Select variables to show:", choices  = vars,
    selected = state_multiple("view_vars",vars, vars), multiple = TRUE,
    selectize = FALSE, size = min(15, length(vars)))
})

output$ui_View <- renderUI({
  list(
    wellPanel(
      uiOutput("ui_view_vars")
    ),
    help_modal('View','viewHelp',inclMD(file.path(r_path,"/base/tools/help/view.md")))
  )
})

# output$dataviewer <- renderDataTable({

  # if(not_available(input$view_vars)) return()
  # select_(.getdata(), .dots = input$view_vars)

# }, options = list(orderClasses = TRUE, caseInsensitive = TRUE,
#   lengthMenu = list(c(10, 25, 50, -1),c('10','25','50','All')),
#   pageLength = 10, search = list(regex = TRUE)))


output$dataviewer <- DT::renderDataTable({

  if(not_available(input$view_vars)) return()

  dat <- select_(.getdata(), .dots = input$view_vars)
  action = DT::dataTableAjax(session, dat, rownames = FALSE)

  DT::datatable(dat, filter = "bottom", rownames = FALSE,
    server = TRUE,
    # class = "compact",
    options = list(
      ajax = list(url = action),
      search = list(regex = TRUE),
      columnDefs = list(list(className = 'dt-center', targets = "_all")),
      autoWidth = TRUE,
      processing = FALSE,
      pageLength = 10,
      lengthMenu = list(c(10, 25, 50, -1), c('10','25','50','All'))
    )
  )
})
