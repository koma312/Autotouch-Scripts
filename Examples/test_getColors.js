// import functions from the main module of AutoTouch
const { getColors, getColor } = at

// getColor(x, y)
const [result, error] = getColor(100, 200)
if (error) {
    alert('Failed to get color, error: %s', error)
} else {
    alert('Got result by getColor', result);
}

// getColors([{x: x1, y: y1}, {x: x2, y: y2}, ...])
const [result1, error1] = getColors([
    {x: 100, y: 100},
    {x: 200, y: 200},
    {x: 300, y: 300},
    {x: 400, y: 400},
])
if (error1) {
    alert('Failed to get colors, error: %s', error)
} else {
    console.log(result1)
    alert('getColors result1:', result1)
}