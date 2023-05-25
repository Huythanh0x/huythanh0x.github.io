---
title: Viewbinding in Android
categories: [Android]
tags: [jetpack, kotlin]
---

<p>When writing regular code to access a UI component from the code behind, we usually need to declare and then use <code>findViewById()</code>. However, with View Binding, we can completely eliminate the <code>findViewById</code> step and enjoy several advantages. In this article, I will introduce View Binding and provide some examples of its usage.</p>

##  Brief introduction to View Binding

<p>View Binding is a component in Android Jetpack that helps eliminate the <code>findViewById</code> step in the coding process by generating corresponding classes for XML files in the project. Here are some benefits it brings:</p>

<ol>
<li>Reduces the number of lines of code.</li>
<li>Eliminates the possibility of passing the wrong ID and causing <code>NullPointerException</code>.</li>
<li>Automatically generates classes based on XML, ensuring the correct UI elements and types are queried.</li>
<li>Handles scenarios with different configurations, such as portrait and landscape screens.</li>
</ol>

<p>View Binding can be considered a lightweight version of Data Binding with the main function of eliminating <code>findViewById</code>. If you want to automatically bind data and UI from XML to code-behind for automatic updates and also eliminate <code>findViewById</code>, Data Binding is more suitable.</p>

##  Enable View Binding

<p>To enable View Binding in an Android project, follow these steps:</p>

<ol>
<li>Open the <code>build.gradle.app</code> file.</li>
<li>Inside the <code>android</code> block, add the following code:</li>
</ol>

```kotlin
buildFeatures {
    viewBinding true
}
```
##  View Binding in Activity

<p>To use View Binding in an Activity, follow these steps:</p>

<ol>
<li>Create a variable of the corresponding View Binding class</li>
</ol>

```kotlin
class MainActivity : AppCompatActivity() {
    lateinit var binding: ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //setContentView(R.layout.activity_main)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.textHelloWorld.text = "hello from the main activity"
    }
}
```
<p>According to convention, the variable is named <code>binding</code>, and the data type depends on the name of the layout. For example, if we have <code>activity_main.xml</code>, the View Binding class that is automatically generated will be <code>ActivityMainBinding</code> (append "Binding" to the layout name and capitalize the first letter).</p>

<p>Next, we inflate the layout to assign the current layout to the <code>binding</code> variable.</p>

<p>After this step, the <code>binding</code> variable can directly query the corresponding components within the layout. In this case, <code>root</code> is always created to point to the outermost layout, which contains all the other components in the XML file.</p>

<p>It's important to note that when using View Binding, we use <code>setContentView(binding.root)</code> instead of <code>setContentView(R.id.xxxx)</code>. Both cannot be used simultaneously.</p>

<p>We can query the remaining components directly based on their IDs. For example, if we have an ID called <code>text_hello_world</code>, we can query it using <code>

binding.textHelloWorld</code>. Since kotlin automatically generates the getter/setter functions, we can access it as shown below:</p>

```kotlin
class MainActivity : AppCompatActivity() {
    lateinit var binding: ActivityMainBinding
    override fun onCreate(savedInstanceState: Bundle?) {
        // ...
        var currentText = binding.textHelloWorld.text
        binding.textHelloWorld.text = "hello from the main activity"
    }
}
```
##  View Binding and Fragment - Inflate

<p>For Fragments, we have two approaches: inflate and bind. Let's start with inflate.</p>

<p>To use View Binding in a Fragment using the inflate approach, follow these steps:</p>

<ol>
<li>Create a Fragment and override the <code>onCreateView</code> method.</li>
</ol>

```kotlin
class InflateFragment : Fragment(R.layout.fragment_inflate) {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_blank, container, false)
    }
}
```

<p>Here, we pass the ID of the corresponding layout, which in this case is <code>R.layout.fragment_inflate</code>.</p>

<p>According to convention, we create two variables: <code>_binding</code> (nullable) and <code>binding</code>. The <code>_binding</code> variable is used for inflating or binding the layout, while the <code>binding</code> variable retrieves the inflated/bound result from <code>_binding</code> for querying. If <code>_binding</code> is null, a <code>NullPointerException</code> is thrown.</p>

```kotlin
class InflateFragment : Fragment(R.layout.fragment_inflate) {
    private var _binding: FragmentInflateBinding? = null
    private val binding get() = _binding!!
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentInflateBinding.inflate(inflater, container, false)
        return binding.root
    }
    
    override fun onDestroy() {
        _binding = null
        super.onDestroy()
    }
}
```

<p>After inflating the layout, we can use the <code>binding</code> variable to query the components as we did in the Activity example. It's important to always override <code>onDestroy</code> and set <code>_binding</code> to null when the Fragment is destroyed.</p>

##  View Binding and Fragment - Bind

<p>Similar to the previous approach, but this time we bind the view in the <code>onViewCreated</code> method after the view has been created. Here's an example:</p>

```kotlin
class BindFragment : Fragment(R.layout.fragment_bind) {
    private var _binding: FragmentBindBinding? = null
    private val binding get() = _binding!!
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        _binding = FragmentBindBinding.bind(view)
    }

    override fun onDestroy() {
        _binding = null
        super.onDestroy()
    }
}
```

<p>Since the steps are similar, I won't explain them again. Just note the difference in the timing of inflating or binding the view, depending on whether the view has been created or not.</p>

##  Conclusion

<p>About a month ago, I read a book on Android programming for beginners, and I noticed that the View Binding chapter was one of the first chapters. Throughout the book,

 View Binding was used continuously. From there, I researched and found that it's a useful knowledge for beginners in programming, like myself.</p>

<p>In this article, I highlighted some advantages of View Binding and demonstrated its usage in Activities and Fragments.</p>

##  References

<ul>
<li>Skillshare course - <a href="https://www.skillshare.com/classes/How-to-use-Android-View-Binding-like-a-pro/1393186474/projects?via=watch-history">How to use Android View Binding like a pro</a></li>
<li>Medium article - <a href="https://medium.com/androiddevelopers/use-view-binding-to-replace-findviewbyid-c83942471fc">Use View Binding to Replace findViewById</a></li>
<li>GitHub source code - <a href="https://github.com/Huythanh0x/ViewBinding_Like_a_Pro">ViewBinding_Like_a_Pro</a></li>
</ul>