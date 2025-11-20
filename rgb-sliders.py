import marimo

__generated_with = "0.16.4"
app = marimo.App(width="medium")


@app.cell
def _():
    import marimo as mo

    return (mo,)


@app.cell
def _(mo):
    r = mo.ui.slider(0,255)
    g = mo.ui.slider(0,255)
    b = mo.ui.slider(0,255)
    r,g,b
    return b, g, r


@app.cell
def _(b, g, mo, r):
    mo.Html(
            f"<div style='"
            f"width:200px; height:200px; "
            f"background:rgb({r.value},{g.value},{b.value}); "
            f"border-radius:4px;"
            f"'></div>"
        ),
    return


if __name__ == "__main__":
    app.run()
