console.log("Hello World");

//CREATE NEW OBJECT AND OTHER DATA TYPES
const obj = {}
console.log(obj); //{}
console.log(new Object()); //{} name: 'value' 
console.log(new Array()); //[]
console.log(new Set()); //Set(0) 1D arrary with unique elements
console.log(new Map()); //Map(0) 2D array in key-value pair with unique key
console.log(new WeakSet()); //WeakSet{}
console.log(new WeakMap()); //WeakMap{}

const objectName = new Object()
const arrayName = new Array()
const setName = new Set()
const mapName = new Map()
const weakSetName = new WeakSet()
const weakMapName = new WeakMap()

//METHOD
//Object.assign()
{
    const target = { a: 1, b: 2 }
    const source = { b: 4, c: 5 }

    const returnTarget = Object.assign(target, source)

    console.log(returnTarget);
    console.log(target); //Object.assign() can damage the inital data
    console.log(source);
}

{
    const target = { a: 1, b: 2 }
    const source = { b: 4, c: 5 }

    const returnTarget = { ...target, ...source } //...target separates the target object into several name-value pairs

    console.log(returnTarget);
    console.log(target);
    console.log(source);
}


//Object.create()
{
    const obj1 = {
        name: "Raymond",
        age: 18
    }

    const obj2 = new Object({
        name: "Raymond",
        age: 18,
        draw: function () {
            console.log(`Name: ${this.name}, Age: ${this.age}`);
        }
    })

    console.log(obj1);
    console.log(obj2);

    //Use the 'Prototype chain'. obj3 is based on obj2
    const obj3 = Object.create(obj2)
    //If obj3 doesn't have its own value, it will follow the value of its direct parent
    console.log(obj3);

    obj3.draw()

    console.log(obj3.name, obj3.age);
    //change to obj3's own value
    obj3.name = "newvalue", obj3.age = 1
    //obj3 can print with its own value.
    console.log(obj3)
    console.log(obj3.name, obj3.age)

    obj3.draw()

}


//Object.keys(), Object.values()
{
    const user = {
        name: "Raymond",
        age: 18,
        profile: {
            address: "x.xxx.xx",
            email: "zzz@zz.com"
        },
        draw: function () {
            console.log(`Name: ${this.name}, Age; ${this.age}`);
        }
    }

    //gather all keys in user object into a list
    const KeyObjName = Object.keys(user)
    console.log(KeyObjName);
    //gather all keys in user object into a list
    const ValueObjName = Object.values(user)
    console.log(ValueObjName);
}


//Object.hasOwn(), yourObjName.hasOwnProperty()
{
    const obj = { a: 1, name: "Raymond", age: 30 }
    const obj2 = { ...obj }
    console.log(obj, obj2);

    const obj3 = new Object(obj) //create a copy of obj
    console.log(obj3);

    obj3.a = 2

    const obj4 = Object.create(obj)
    console.log(obj4);

    obj4.a = 3

    console.log(obj, obj2, obj3, obj4);

    //check if a property exists in a object
    console.log(Object.hasOwn(obj, "a"));
    console.log(Object.hasOwn(obj, "name"));
    console.log(Object.hasOwn(obj, "age"));
    console.log(Object.hasOwn(obj, "toString"));

    console.log(Object.hasOwn(obj4, "a")); //return true. Because "a" is a name-value pair origined in obj4
    console.log(Object.hasOwn(obj4, "name")); //return true. Because "name" is a name-value pair origined in obj other than obj4
    console.log(Object.hasOwn(obj4, "age"));
    console.log(Object.hasOwn(obj4, "toString"));

    //another way to write object.hasOwn()
    console.log(obj4.hasOwnProperty("a"));
    console.log(obj4.hasOwnProperty("name"));
    console.log(obj4.hasOwnProperty("age"));
    console.log(obj4.hasOwnProperty("toString"));

    //check all properties in a object prototype 
    console.log(obj4.__proto__);

    //check if an object prototype is the origin of another object prototype 
    console.log(obj3.isPrototypeOf(obj4));
    console.log(obj.isPrototypeOf(obj4)); //return true. Because obj3 and obj is the origin of obj4
    console.log(obj2.isPrototypeOf(obj4)); //return false

}