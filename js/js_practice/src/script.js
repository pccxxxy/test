console.log('I am Raymond');
console.log('sjdejfnefoe');

// print();    Print the page

let a = 0, b = 1;
console.log(a, b);

a = 3
b = 4
console.log(a, b);

// return a    Error because no :


//STRING
//Way 1
{
    let firstName = "Raymond", lastName = "G"
}
//Way 2
{
    let firstName = "Raymond"
    let lastName = "G"

}
//Way 3
{
    let firstName
    let lastName
    let middleName //undefined data type
    let None = null //null data type 

    firstName = "Raymond"
    lastName = 'G'
    // middleName=`None`

    thisIsNumber = 76876

    console.log(firstName, lastName, middleName)
    console.log(thisIsNumber, typeof thisIsNumber)
    console.log(firstName, typeof firstName)
    console.log(middleName, typeof middleName)
    console.log(None, typeof None)

}

{
    //old versions
    let string_d = 'I said "sdsdsfefe"'
    let string_e = "I said \" 'sdsdsfefe'" //can't change line in the older js version
    console.log(string_d, string_e);

    let string_f = "He said:" + '"sfsfsdsds"'
    console.log(string_f);

    //new version
    let string_g = `He said: 
    "asdsds: 
    'aaaaaaaaaa'"`
    console.log(string_g);

    let myName = "Raymond"
    console.log(`Hello ${myName}`)

    /** type /** 
     * to get 
     * multiple lines comment
     */

    /** TODO Highlight extension
     * TODO: note the tasks 
     * FIXME: note the bugs
     */
}

{
    let a = true
    let b = false

    if (a) {
        console.log('good');
        a = false //doesn't trigger the else statement. Becasue determination on a is done
    } else {
        console.log('bad');

        if (b) {
            console.log('b good');
        } else {
            console.log('b bad');
        }
    }
    // SUGGESTION: REPLACE THE multi layers if else with the if elseif else
    //     if() {

    //     } else if() {

    //     } else if() {

    //     } else {

    //     }
}


//OBJECT
{
    let obj = {
        name: "Raymond",
        age: 18
    }

    let a = 1, b = a
    console.log(a, b);
    b = 2
    console.log(a, b);


    let obj2 = obj
    console.log(obj, obj2);

    obj2.age = 30
    console.log(obj, obj2);

    let obj3 = { ...obj }
    console.log(obj, obj3);
    obj3.name = 'Tianyang'
    console.log(obj, obj3);

    let user = {
        name: 'Raymond1',
        age: 18,
        profile: {
            cv: 'https://xxx',
            id: 111111
        }
    }

    let user2 = { ...user }
    console.log(user, user2);

    user2.name = 'Tianyang'
    console.log(user, user2);

    user2.profile.id = 222222
    console.log(user, user2);



}


//ARRAY
{
    let array = [1, 2, 3, "4", true, { name: "Raymond" }]
    console.log(array);
    console.log(array.length);

    // array.length = 0; //set array length to 0
    // console.log(array); //becomes empty array []


    for (let i = 0; i < array.length; i++) {
        console.log(array[i]);
    }

    //VARIABLE
    array[1] = "sdsdsds"
    console.log(array);

    //CONSTANT
    const a = 10
    // a = 11
    // console.log(a);    // ERROR: constant can't be changed

    const array_1 = ["90"]
    const obj_1 = { name: "raymond" }
    console.log(array_1, obj_1);

    // array_1 = ["new value"]    // ERROR: constant can't be changed
    // obj_1 = {}    // ERROR: constant can't be changed
    array_1[0] = "91"   // ERROR DISAPPEARED: because we are changing the content within constant, not change on constant as a whole
    array_1[2] = "100"  //leave the 2nd element[1] as empty
    console.log(array_1, array_1.length);

    obj_1.age = 18
    console.log(obj_1);
    obj_1['middle'] = 'none'
    console.log(obj_1);
    obj_1[100] = '100'
    console.log(obj_1); // ERROR DISAPPEARED: because we are changing the content within constant, not change on constant as a whole
    console.log(obj_1.length) //ouput undefined index. Because object doesn't have length
}


{
    let x = 10
    let y = 0

    console.log(x + y);
    console.log(x - y);
    console.log(x * y);
    console.log(x / y);
    console.log(x % y);
    console.log(x ** y);
    console.log(Math.sqrt(100));
    //POST INCREMENT & POST DECREMENT
    console.log(x++);
    console.log(x);
    console.log(x--);
    console.log(x);
    //PRE INCREMENT & PRE DECREMENT
    console.log(++x);
    console.log(x);
    console.log(--x);
    console.log(x);
}
{
    let x = 10
    x++

    x = x + 5
    x += 5
    console.log(x);


    x = x - 5
    x -= 5
    console.log(x);

    x *= 5
    console.log(x);
    x /= 5
    console.log(x);
    x &= 5
    console.log(x);

    x ?? 5
    console.log(x);
}

