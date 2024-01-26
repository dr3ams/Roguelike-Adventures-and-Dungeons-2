onEvent('recipes', event => {
    let recipes = [
        ['kubejs:ccc1', 'kubejs:copper_coin'],
        ['kubejs:ccc2', 'kubejs:ccc1'],
        ['kubejs:ccc3', 'kubejs:ccc2'],
        ['kubejs:ccc4', 'kubejs:ccc3'],
        ['kubejs:ccc5', 'kubejs:ccc4'],
        ['kubejs:ccc6', 'kubejs:ccc5'],
        ['kubejs:ccc7', 'kubejs:ccc6'],
        ['kubejs:ccc8', 'kubejs:ccc7']
    ]

    for (let i = 0; i < recipes.length; i++) {
        event.shaped(recipes[i][0], [
            'aaa',
            'aaa',
            'aaa'
        ], {
            a: recipes[i][1]
        })
        event.shapeless('9x ' + recipes[i][1], recipes[i][0])
    }
})