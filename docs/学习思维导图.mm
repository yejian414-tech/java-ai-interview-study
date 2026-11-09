<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node TEXT="Java + AI Agent · 800 道题" ID="study-root">
    <node TEXT="Java 语言与集合（131题）" ID="java" POSITION="right" FOLDED="true">
      <node TEXT="面向对象与类型系统 · 核心（25题）" ID="types" FOLDED="true">
        <node TEXT="Q001 请说说 Java 语言有哪些主要特点？ [p43]" ID="Q001" />
        <node TEXT="Q002 面向对象和面向过程有什么区别？ [p43]" ID="Q002" />
        <node TEXT="Q003 Java 的八种基本数据类型及其封装类、大小、默认值分别是什么？ [p43]" ID="Q003" />
        <node TEXT="Q004 int 和 Integer 有什么区别？为什么有了 int 还需要 Integer？ [p43]" ID="Q004" />
        <node TEXT="Q005 boolean 类型在 Java 虚拟机中到底占几个字节？ [p44]" ID="Q005" />
        <node TEXT="Q006 Java 标识符的命名规则和命名规范分别是什么？ [p44]" ID="Q006" />
        <node TEXT="Q007 instanceof 关键字的作用是什么？使用时有哪些注意事项？ [p44]" ID="Q007" />
        <node TEXT="Q008 什么是 Java 的自动装箱与拆箱？其底层分别调用什么方法？ [p45]" ID="Q008" />
        <node TEXT="Q009 为什么 Integer i1=100 与 i2=100 相等，而 i3=200 与 i4=200 不相等？ [p45]" ID="Q009" />
        <node TEXT="Q010 Double 等浮点包装类型为什么不像 Integer 那样有缓存？ [p45]" ID="Q010" />
        <node TEXT="Q011 面向对象三大特性是什么？请简要说明各自作用。 [p45]" ID="Q011" />
        <node TEXT="Q012 方法重载（Overload）和重写（Override）有什么区别？ [p46]" ID="Q012" />
        <node TEXT="Q013 重写（Override）时有哪些具体约束需要注意？ [p46]" ID="Q013" />
        <node TEXT="Q041 Java 内部类分为哪几种？各自适用场景是什么？ [p54]" ID="Q041" />
        <node TEXT="Q042 静态内部类有什么特点？和普通内部类有何不同？ [p54]" ID="Q042" />
        <node TEXT="Q043 成员内部类有哪些限制？为什么不能定义静态成员？ [p55]" ID="Q043" />
        <node TEXT="Q044 什么是局部内部类和匿名内部类？ [p55]" ID="Q044" />
        <node TEXT="Q045 什么是 Java 泛型？使用泛型有什么好处？ [p55]" ID="Q045" />
        <node TEXT="Q046 泛型方法和泛型类分别如何定义？ [p55]" ID="Q046" />
        <node TEXT="Q047 什么是泛型的通配符？extends 和 super 有什么区别？ [p56]" ID="Q047" />
        <node TEXT="Q048 什么是 Java 的类型擦除（Type Erasure）？会带来什么影响？ [p56]" ID="Q048" />
        <node TEXT="Q053 Java 中创建对象有哪几种方式？ [p57]" ID="Q053" />
        <node TEXT="Q061 final 关键字有哪些常见用法？ [p60]" ID="Q061" />
        <node TEXT="Q062 static 关键字有哪些用法？ [p60]" ID="Q062" />
        <node TEXT="Q063 请对比说明抽象类和接口在设计上的主要差异及使用场景。 [p60]" ID="Q063" />
      </node>
      <node TEXT="对象协议与字符串 · 核心（12题）" ID="objects" FOLDED="true">
        <node TEXT="Q014 == 和 equals 的区别是什么？ [p46]" ID="Q014" />
        <node TEXT="Q015 为什么比较字符串相等推荐用 equals，并且把常量写在前面？ [p46]" ID="Q015" />
        <node TEXT="Q016 hashCode 的作用是什么？它和 equals 有怎样的关系？ [p47]" ID="Q016" />
        <node TEXT="Q017 为什么重写 equals 时必须同时重写 hashCode？ [p47]" ID="Q017" />
        <node TEXT="Q018 两个不相等的对象有可能产生相同的 hashCode 吗？哈希冲突如何处理？ [p47]" ID="Q018" />
        <node TEXT="Q019 String、StringBuffer、StringBuilder 三者的区别是什么？ [p48]" ID="Q019" />
        <node TEXT="Q020 为什么 String 被设计为不可变（immutable）？ [p48]" ID="Q020" />
        <node TEXT="Q021 字符串使用“+”号拼接时，底层究竟发生了什么？ [p48]" ID="Q021" />
        <node TEXT="Q022 什么是字符串常量池？new String(&quot;abc&quot;)会创建几个对象？ [p48]" ID="Q022" />
        <node TEXT="Q054 Object 类有哪些重要的方法？请列举并说明。 [p58]" ID="Q054" />
        <node TEXT="Q059 Java 中的 clone 机制是什么？浅拷贝和深拷贝有何区别？ [p59]" ID="Q059" />
        <node TEXT="Q073 为什么比较对象内容统一用 equals，并且把常量写在前面？请结合阿里规范说明。 [p63]" ID="Q073" />
      </node>
      <node TEXT="异常、反射与注解 · 核心（18题）" ID="reflection" FOLDED="true">
        <node TEXT="Q023 RuntimeException 和 CheckedException（受检异常）有什么区别？ [p49]" ID="Q023" />
        <node TEXT="Q024 Error 和 Exception 有什么不同？ [p49]" ID="Q024" />
        <node TEXT="Q025 try-catch-finally 中，如果 try 里有 return，finally 还会执行吗？ [p49]" ID="Q025" />
        <node TEXT="Q026 throw 和 throws 的区别是什么？ [p50]" ID="Q026" />
        <node TEXT="Q027 Java 中异常处理有哪些方式？ [p50]" ID="Q027" />
        <node TEXT="Q028 请列举常见的几种 RuntimeException（运行时异常）。 [p50]" ID="Q028" />
        <node TEXT="Q030 什么是 Java 反射机制？它的核心概念是什么？ [p51]" ID="Q030" />
        <node TEXT="Q031 反射一般应用在哪些场合？请举例说明。 [p51]" ID="Q031" />
        <node TEXT="Q032 获取一个类的 Class 对象有哪几种方式？ [p51]" ID="Q032" />
        <node TEXT="Q033 Java 反射 API 的核心类有哪些？各自负责什么？ [p52]" ID="Q033" />
        <node TEXT="Q034 反射有哪些优点和缺点？如何优化反射性能？ [p52]" ID="Q034" />
        <node TEXT="Q035 为什么说 Java 是“半动态语言”？动态语言指什么？ [p52]" ID="Q035" />
        <node TEXT="Q036 什么是 Java 注解（Annotation）？基本概念是什么？ [p53]" ID="Q036" />
        <node TEXT="Q037 Java 的四种标准元注解分别是什么？各自作用？ [p53]" ID="Q037" />
        <node TEXT="Q038 @Target 和@Retention 这两个元注解分别控制什么？ [p53]" ID="Q038" />
        <node TEXT="Q039 什么是注解处理器？如何基于反射实现一个注解处理器？ [p53]" ID="Q039" />
        <node TEXT="Q040 @Inherited 和@Documented 元注解有什么作用？ [p54]" ID="Q040" />
        <node TEXT="Q060 finalize()方法有什么作用？为什么现在不推荐依赖它？ [p59]" ID="Q060" />
      </node>
      <node TEXT="序列化与 IO/NIO · 进阶（12题）" ID="io" FOLDED="true">
        <node TEXT="Q049 什么是 Java 对象序列化？它主要解决什么问题？ [p56]" ID="Q049" />
        <node TEXT="Q050 如何实现 Java 对象的序列化与反序列化？ [p57]" ID="Q050" />
        <node TEXT="Q051 transient 关键字在序列化中起什么作用？ [p57]" ID="Q051" />
        <node TEXT="Q052 为什么说序列化不保存静态变量？父类对象如何一起序列化？ [p57]" ID="Q052" />
        <node TEXT="Q064 Java IO 流按不同维度可以分为哪几类？ [p61]" ID="Q064" />
        <node TEXT="Q065 Java IO 的四个抽象基类是什么？各自职责？ [p61]" ID="Q065" />
        <node TEXT="Q066 Java 中阻塞 IO、非阻塞 IO、多路复用 IO 模型分别是什么？ [p61]" ID="Q066" />
        <node TEXT="Q067 Java 传统 IO 与 NIO 的主要区别是什么？ [p62]" ID="Q067" />
        <node TEXT="Q068 NIO 的三大核心组件是什么？各自作用？ [p62]" ID="Q068" />
        <node TEXT="Q069 NIO 中的 Buffer（缓冲区）有什么作用？为什么重要？ [p62]" ID="Q069" />
        <node TEXT="Q070 NIO 的 Selector（选择器）解决了什么问题？ [p62]" ID="Q070" />
        <node TEXT="Q071 除了阻塞、非阻塞、多路复用，还有哪些 IO 模型？ [p63]" ID="Q071" />
      </node>
      <node TEXT="集合体系与 List · 核心（19题）" ID="list" FOLDED="true">
        <node TEXT="Q074 请说明 ArrayList 和 LinkedList 的区别及各自适用场景。 [p64]" ID="Q074" />
        <node TEXT="Q075 Collection 和 Collections 有什么区别？ [p64]" ID="Q075" />
        <node TEXT="Q076 请简要说明 Java 集合框架的整体体系结构，List、Set、Queue、Map 四大接口分别 解决什么问题？ [p64]" ID="Q076" />
        <node TEXT="Q077 Collection 体系和 Map 体系最大的区别是什么？为什么说 Map 不是 Collection 的 子接口？ [p65]" ID="Q077" />
        <node TEXT="Q078 为什么说 Set 集合“无序且不可重复”？这里的“无序”具体指什么？ [p65]" ID="Q078" />
        <node TEXT="Q079 实际开发中应该如何根据场景在 List、Set、Map 之间选型？ [p65]" ID="Q079" />
        <node TEXT="Q080 Iterator 迭代器的作用是什么？它和 for-each 循环有什么关系？ [p66]" ID="Q080" />
        <node TEXT="Q081 为什么 Java 集合框架要设计那么多层接口和抽象类？这样做有什么好处？ [p66]" ID="Q081" />
        <node TEXT="Q082 请说明 ArrayList 的底层数据结构与主要特点。 [p66]" ID="Q082" />
        <node TEXT="Q083 Vector 的底层实现是什么？它与 ArrayList 相比有什么不同？ [p66]" ID="Q083" />
        <node TEXT="Q084 LinkedList 的底层结构是什么？它适合哪些操作？ [p67]" ID="Q084" />
        <node TEXT="Q085 ArrayList 和 Vector 的区别有哪些？请全面对比。 [p67]" ID="Q085" />
        <node TEXT="Q086 ArrayList 和 LinkedList 的区别是什么？开发中如何选型？ [p67]" ID="Q086" />
        <node TEXT="Q087 ArrayList 的扩容机制是怎样的？扩容会带来什么性能影响？ [p68]" ID="Q087" />
        <node TEXT="Q088 为什么 ArrayList 的 add(int index, E element)比 add(E e)慢？ [p68]" ID="Q088" />
        <node TEXT="Q089 LinkedList 除了实现 List，还能充当什么角色？为什么？ [p68]" ID="Q089" />
        <node TEXT="Q090 RandomAccess 接口有什么作用？为什么 ArrayList 实现它而 LinkedList 没有？ [p68]" ID="Q090" />
        <node TEXT="Q091 遍历 ArrayList 有哪些方式？它们各自的性能差异如何？ [p69]" ID="Q091" />
        <node TEXT="Q133 Collections 工具类有哪些常用方法？请举例说明。 [p82]" ID="Q133" />
      </node>
      <node TEXT="Set 与排序规则 · 核心（11题）" ID="set" FOLDED="true">
        <node TEXT="Q092 HashSet 的底层实现原理是什么？为什么它查询很快？ [p69]" ID="Q092" />
        <node TEXT="Q093 HashSet 是如何判断两个元素是否重复的？为什么必须同时依赖 hashCode 和 equals？ [p70]" ID="Q093" />
        <node TEXT="Q094 HashSet 的存储顺序为什么和插入顺序不一致？哈希冲突的元素如何存放？ [p70]" ID="Q094" />
        <node TEXT="Q095 重写 hashCode 和 equals 有哪些重要约定？不遵守会有什么后果？ [p70]" ID="Q095" />
        <node TEXT="Q096 TreeSet 的底层是什么？它如何保证元素有序且唯一？ [p70]" ID="Q096" />
        <node TEXT="Q097 为什么把自定义类对象放进 TreeSet 必须实现 Comparable 或提供 Comparator？ [p71]" ID="Q097" />
        <node TEXT="Q098 LinkedHashSet 是什么？它和 HashSet 有什么区别？ [p71]" ID="Q098" />
        <node TEXT="Q099 HashSet、LinkedHashSet、TreeSet 三者应如何对比选型？ [p71]" ID="Q099" />
        <node TEXT="Q100 comparable 和 Comparator 接口有什么区别？分别在什么场景使用？ [p72]" ID="Q100" />
        <node TEXT="Q101 为什么 String 和 Integer 能直接放进 TreeSet 排序，自定义类却不行？ [p72]" ID="Q101" />
        <node TEXT="Q102 TreeSet 的 compareTo 方法返回值（负、零、正）分别代表什么含义？ [p72]" ID="Q102" />
      </node>
      <node TEXT="Map、扩容与红黑树 · 核心（20题）" ID="map" FOLDED="true">
        <node TEXT="Q103 HashMap 的底层数据结构是什么？为什么说它是“数组+链表+红黑树”？ [p73]" ID="Q103" />
        <node TEXT="Q104 HashMap 是如何根据 key 的 hashCode 快速定位到 value 的？ [p73]" ID="Q104" />
        <node TEXT="Q105 JDK1.7 和 JDK1.8 的 HashMap 实现主要区别是什么？ [p73]" ID="Q105" />
        <node TEXT="Q106 HashMap 中链表转红黑树的条件是什么？为什么阈值是 8？ [p73]" ID="Q106" />
        <node TEXT="Q107 HashMap 的扩容机制是怎样的？扩容时会发生什么？ [p74]" ID="Q107" />
        <node TEXT="Q108 什么是 HashMap 的负载因子？默认 0.75 代表什么含义？ [p74]" ID="Q108" />
        <node TEXT="Q109 为什么 HashMap 的容量总是 2 的幂？tableSizeFor 有什么作用？ [p74]" ID="Q109" />
        <node TEXT="Q110 HashMap 对 null 键和 null 值有什么特殊规定？为什么？ [p75]" ID="Q110" />
        <node TEXT="Q111 HashMap 为什么是非线程安全的？多线程下随意使用会有什么后果？ [p75]" ID="Q111" />
        <node TEXT="Q112 为什么 JDK1.7 的 HashMap 在多线程扩容时可能形成环形链表，JDK1.8 又是如何 修复的？ [p75]" ID="Q112" />
        <node TEXT="Q113 HashMap 和 Hashtable 的区别有哪些？为什么现在不推荐用 Hashtable？ [p75]" ID="Q113" />
        <node TEXT="Q114 HashMap 和 HashSet 有什么关系？它们底层是如何关联的？ [p76]" ID="Q114" />
        <node TEXT="Q115 HashMap 和 TreeMap 的区别是什么？如何选型？ [p76]" ID="Q115" />
        <node TEXT="Q116 Hashtable 作为遗留类，为什么说它“并发性不如 ConcurrentHashMap”？ [p77]" ID="Q116" />
        <node TEXT="Q117 TreeMap 有什么特点？它的 key 为什么要实现 Comparable？ [p77]" ID="Q117" />
        <node TEXT="Q118 LinkedHashMap 有什么用？它和 HashMap、LRU 缓存有什么关系？ [p77]" ID="Q118" />
        <node TEXT="Q119 请描述一次 HashMap 的 put 操作流程，从计算哈希到存入。 [p78]" ID="Q119" />
        <node TEXT="Q128 什么是红黑树？它有哪些必须满足的特性？ [p80]" ID="Q128" />
        <node TEXT="Q129 红黑树为什么要左旋和右旋？请简要说明旋转的作用。 [p81]" ID="Q129" />
        <node TEXT="Q130 红黑树在 HashMap 中具体起到什么作用？为什么不用普通的二叉查找树或平衡二 叉树（AVL）？ [p81]" ID="Q130" />
      </node>
      <node TEXT="并发容器与遍历安全 · 核心（14题）" ID="concurrent-map" FOLDED="true">
        <node TEXT="Q029 fail-fast（快速失败）和 fail-safe（安全失败）有什么区别？ [p51]" ID="Q029" />
        <node TEXT="Q120 ConcurrentHashMap 在 JDK1.7 中是如何保证线程安全的？什么是 Segment 段？ [p78]" ID="Q120" />
        <node TEXT="Q121 为什么说 Segment“继承 ReentrantLock”来实现加锁？这样设计有什么好处？ [p78]" ID="Q121" />
        <node TEXT="Q122 ConcurrentHashMap 的并行度默认是多少？能否动态扩容？ [p79]" ID="Q122" />
        <node TEXT="Q123 JDK1.7 和 JDK1.8 的 ConcurrentHashMap 实现有什么区别？为什么 1.8 要改？ [p79]" ID="Q123" />
        <node TEXT="Q124 JDK1.8 的 ConcurrentHashMap 引入了红黑树，它和 HashMap 的树化有何异 同？ [p79]" ID="Q124" />
        <node TEXT="Q125 ConcurrentHashMap 是如何在并发写入时保证线程安全的？ [p80]" ID="Q125" />
        <node TEXT="Q126 ConcurrentHashMap 与 Hashtable 在性能和使用上应如何对比？ [p80]" ID="Q126" />
        <node TEXT="Q127 ConcurrentHashMap 的 size()方法为什么不好实现？它是怎么统计的？ [p80]" ID="Q127" />
        <node TEXT="Q131 什么是集合的 fail-fast（快速失败）机制？它如何工作？ [p81]" ID="Q131" />
        <node TEXT="Q132 什么是 fail-safe（安全失败）机制？它与 fail-fast 有何区别？ [p82]" ID="Q132" />
        <node TEXT="Q134 如何让一个 HashMap 变成线程安全的？Collections.synchronizedMap 的原理是 什么？ [p82]" ID="Q134" />
        <node TEXT="Q135 Collections 提供了哪些线程安全包装方法？它们和并发容器有何区别？ [p83]" ID="Q135" />
        <node TEXT="Q204 ConcurrentHashMap 的分段锁（Segment）原理是什么？它是如何减小锁粒度 的？ [p103]" ID="Q204" />
      </node>
    </node>
    <node TEXT="并发与 JVM（134题）" ID="runtime" POSITION="left" FOLDED="true">
      <node TEXT="线程状态与协作 · 核心（20题）" ID="threads" FOLDED="true">
        <node TEXT="Q055 wait()、notify()、notifyAll()的作用与区别是什么？ [p58]" ID="Q055" />
        <node TEXT="Q056 为什么 wait、notify、notifyAll 定义在 Object 类中，而不是 Thread 类？ [p58]" ID="Q056" />
        <node TEXT="Q057 为什么 wait 和 notify 必须在同步块（synchronized）中调用？ [p59]" ID="Q057" />
        <node TEXT="Q058 sleep()和 wait()有什么区别？ [p59]" ID="Q058" />
        <node TEXT="Q136 进程和线程的区别是什么？ [p83]" ID="Q136" />
        <node TEXT="Q137 Java 中线程与操作系统原生线程是如何映射的？ [p83]" ID="Q137" />
        <node TEXT="Q138 什么是上下文切换？哪些原因会引发线程上下文切换？ [p84]" ID="Q138" />
        <node TEXT="Q139 用户线程与守护线程的区别是什么？各自适用什么场景？ [p84]" ID="Q139" />
        <node TEXT="Q140 为什么 Java 采用抢占式线程调度？协同式调度有什么缺陷？ [p84]" ID="Q140" />
        <node TEXT="Q141 Java 中创建线程有哪几种方式？ [p85]" ID="Q141" />
        <node TEXT="Q142 线程的生命周期包含哪些状态？ [p85]" ID="Q142" />
        <node TEXT="Q143 sleep()与 wait()的区别是什么？ [p85]" ID="Q143" />
        <node TEXT="Q144 start()方法与 run()方法有什么区别？ [p85]" ID="Q144" />
        <node TEXT="Q145 join()方法的作用是什么？什么场景下需要使用它？ [p86]" ID="Q145" />
        <node TEXT="Q146 yield()方法的作用是什么？ [p86]" ID="Q146" />
        <node TEXT="Q147 如何优雅地终止一个线程？interrupt()的工作原理是什么？ [p86]" ID="Q147" />
        <node TEXT="Q148 调用 interrupt()会立即中断正在运行的线程吗？线程在 sleep 中被中断会怎样？ [p87]" ID="Q148" />
        <node TEXT="Q149 终止线程有哪几种方式？为什么 stop()方法不推荐使用？ [p87]" ID="Q149" />
        <node TEXT="Q150 wait、notify、sleep、yield、interrupt 这些线程基本方法各自的作用是什么？ [p87]" ID="Q150" />
        <node TEXT="Q210 如何在两个线程之间共享数据？有哪些常规实现方法？ [p105]" ID="Q210" />
      </node>
      <node TEXT="可见性、volatile 与 CAS · 核心（9题）" ID="jmm" FOLDED="true">
        <node TEXT="Q072 volatile 关键字有什么作用？能保证原子性吗？ [p63]" ID="Q072" />
        <node TEXT="Q165 volatile 关键字的作用是什么？它具备哪两大特性？ [p91]" ID="Q165" />
        <node TEXT="Q166 为什么 volatile 不能保证 i++这类操作的原子性？ [p92]" ID="Q166" />
        <node TEXT="Q167 volatile 的适用场景是什么？需要满足哪些条件才能在并发下安全使用？ [p92]" ID="Q167" />
        <node TEXT="Q168 volatile 与 synchronized 的区别是什么？ [p92]" ID="Q168" />
        <node TEXT="Q169 什么是 CAS（比较并交换）？它的算法过程是怎样的？ [p92]" ID="Q169" />
        <node TEXT="Q170 CAS 会带来什么 ABA 问题？如何解决？ [p93]" ID="Q170" />
        <node TEXT="Q171 Java 原子类（如 AtomicInteger）的实现原理是什么？ [p93]" ID="Q171" />
        <node TEXT="Q172 CAS 作为无锁算法有什么优缺点？ [p93]" ID="Q172" />
      </node>
      <node TEXT="锁、AQS 与死锁 · 核心（30题）" ID="locks" FOLDED="true">
        <node TEXT="Q151 乐观锁与悲观锁的区别是什么？在 Java 中分别是如何体现的？ [p87]" ID="Q151" />
        <node TEXT="Q152 synchronized 可以把哪些对象当作锁？它的作用范围有哪些？ [p88]" ID="Q152" />
        <node TEXT="Q153 synchronized 的底层实现原理是什么？ [p88]" ID="Q153" />
        <node TEXT="Q154 synchronized 内部的核心组件（WaitSet、ContentionList、EntryList、 OnDeck、Owner）各自的职责是什么？ [p88]" ID="Q154" />
        <node TEXT="Q155 为什么 synchronized 是非公平锁？ [p89]" ID="Q155" />
        <node TEXT="Q156 什么是锁升级？偏向锁、轻量级锁、重量级锁之间是如何演变的？ [p89]" ID="Q156" />
        <node TEXT="Q157 偏向锁的原理和作用是什么？为什么引入偏向锁？ [p89]" ID="Q157" />
        <node TEXT="Q158 轻量级锁的原理是什么？它适用于什么场景？ [p89]" ID="Q158" />
        <node TEXT="Q159 重量级锁为什么性能较低？底层依赖什么实现？ [p90]" ID="Q159" />
        <node TEXT="Q160 自旋锁的优缺点是什么？ [p90]" ID="Q160" />
        <node TEXT="Q161 JDK 1.6 引入的适应性自旋锁是如何决定自旋时间的？ [p90]" ID="Q161" />
        <node TEXT="Q162 什么是锁优化？请说明减少锁持有时间、减小锁粒度、锁分离、锁粗化、锁消除。 [p90]" ID="Q162" />
        <node TEXT="Q163 JDK 1.6 对 synchronized 做了哪些重要优化？ [p91]" ID="Q163" />
        <node TEXT="Q164 synchronized 修饰实例方法、静态方法、代码块时，锁住的对象分别是什么？ [p91]" ID="Q164" />
        <node TEXT="Q173 什么是 AQS（抽象的队列同步器）？ [p94]" ID="Q173" />
        <node TEXT="Q174 AQS 定义了哪两种资源共享方式？分别对应哪些同步工具？ [p94]" ID="Q174" />
        <node TEXT="Q175 AQS 的核心数据结构是什么？ [p94]" ID="Q175" />
        <node TEXT="Q176 基于 AQS 自定义同步器需要实现哪些模板方法？ [p95]" ID="Q176" />
        <node TEXT="Q177 以 ReentrantLock 和 CountDownLatch 为例，说明 AQS 如何用 state 实现同步？ [p95]" ID="Q177" />
        <node TEXT="Q178 ReentrantLock 与 synchronized 有哪些共同点？ [p95]" ID="Q178" />
        <node TEXT="Q179 ReentrantLock 与 synchronized 有哪些不同点？ [p95]" ID="Q179" />
        <node TEXT="Q180 ReentrantLock 中 Lock 接口的主要方法有哪些？ [p96]" ID="Q180" />
        <node TEXT="Q181 公平锁和非公平锁有什么区别？性能差异为何？ [p96]" ID="Q181" />
        <node TEXT="Q182 tryLock()、lock()、lockInterruptibly()三者有什么区别？ [p96]" ID="Q182" />
        <node TEXT="Q183 Condition 接口与 Object 的 wait/notify 方法有什么区别？ [p97]" ID="Q183" />
        <node TEXT="Q184 读写锁（ReadWriteLock）的原理是什么？适用于什么场景？ [p97]" ID="Q184" />
        <node TEXT="Q185 读锁与写锁之间的互斥关系是怎么样的？ [p97]" ID="Q185" />
        <node TEXT="Q186 独占锁与共享锁有什么区别？请结合 AQS 说明。 [p98]" ID="Q186" />
        <node TEXT="Q198 什么是死锁？它通常在什么情况下发生？ [p101]" ID="Q198" />
        <node TEXT="Q199 如何排查和预防死锁？synchronized 与 ReentrantLock 在异常时处理锁的方式有 何不同？ [p102]" ID="Q199" />
      </node>
      <node TEXT="线程池与阻塞队列 · 核心（12题）" ID="pool" FOLDED="true">
        <node TEXT="Q187 线程池的原理是什么？为什么要使用线程池？ [p98]" ID="Q187" />
        <node TEXT="Q188 线程池是如何实现线程复用的？ [p98]" ID="Q188" />
        <node TEXT="Q189 线程池主要由哪几部分组成？ [p99]" ID="Q189" />
        <node TEXT="Q190 ThreadPoolExecutor 的构造参数（corePoolSize、maximumPoolSize 等）分别 有什么含义？ [p99]" ID="Q190" />
        <node TEXT="Q191 向线程池提交一个任务时，它的工作流程是怎样的？ [p99]" ID="Q191" />
        <node TEXT="Q192 JDK 内置的四种拒绝策略分别是什么？各自如何处理被拒绝的任务？ [p99]" ID="Q192" />
        <node TEXT="Q193 Java 通过 Executors 提供了哪四种线程池？各自特点是什么？ [p100]" ID="Q193" />
        <node TEXT="Q194 线程池中的空闲线程如何被回收（keepAliveTime 机制）？ [p100]" ID="Q194" />
        <node TEXT="Q200 阻塞队列的原理是什么？它如何支撑生产者-消费者模型？ [p102]" ID="Q200" />
        <node TEXT="Q201 Java 中常见的阻塞队列有哪些？ [p102]" ID="Q201" />
        <node TEXT="Q202 ArrayBlockingQueue 与 LinkedBlockingQueue 有什么区别？ [p102]" ID="Q202" />
        <node TEXT="Q203 SynchronousQueue 与 DelayQueue 的特点及应用场景是什么？ [p103]" ID="Q203" />
      </node>
      <node TEXT="ThreadLocal 与资源清理 · 核心（3题）" ID="threadlocal" FOLDED="true">
        <node TEXT="Q195 ThreadLocal 的作用是什么？它的实现原理是怎样的？ [p100]" ID="Q195" />
        <node TEXT="Q196 ThreadLocalMap 在 Thread 中是如何存在的？ThreadLocal 的使用场景有哪些？ [p101]" ID="Q196" />
        <node TEXT="Q197 在线程池环境下使用 ThreadLocal 可能带来什么问题？应如何避免？ [p101]" ID="Q197" />
      </node>
      <node TEXT="JUC 协作工具 · 进阶（5题）" ID="sync-tools" FOLDED="true">
        <node TEXT="Q205 CountDownLatch 的原理是什么？适用于什么场景？ [p103]" ID="Q205" />
        <node TEXT="Q206 CyclicBarrier 的原理是什么？适用于什么场景？ [p104]" ID="Q206" />
        <node TEXT="Q207 Semaphore（信号量）的原理是什么？适用于什么场景？ [p104]" ID="Q207" />
        <node TEXT="Q208 CountDownLatch 和 CyclicBarrier 的区别是什么？ [p104]" ID="Q208" />
        <node TEXT="Q209 Semaphore 与 ReentrantLock 有什么关系？二者如何区分？ [p105]" ID="Q209" />
      </node>
      <node TEXT="JVM 架构与运行时内存 · 核心（19题）" ID="jvm-memory" FOLDED="true">
        <node TEXT="Q211 请简述 JVM 是什么，它的基本组成包含哪些部分？ [p105]" ID="Q211" />
        <node TEXT="Q212 为什么说 Java 是跨平台的？JVM 在其中起到了什么作用？ [p106]" ID="Q212" />
        <node TEXT="Q213 请说明 HotSpot JVM 中 Java 线程与原生操作系统线程的映射关系。 [p106]" ID="Q213" />
        <node TEXT="Q214 HotSpot JVM 后台主要运行哪些系统线程？各自职责是什么？ [p106]" ID="Q214" />
        <node TEXT="Q215 请整体说明 JVM 运行时数据区的分类，哪些区域是线程私有的，哪些是线程共享 的？ [p106]" ID="Q215" />
        <node TEXT="Q216 线程私有区域和线程共享区域在生命周期上有何不同？这种设计有何意义？ [p107]" ID="Q216" />
        <node TEXT="Q217 什么是程序计数器？为什么它是唯一一个不会抛出 OutOfMemoryError 的区域？ [p107]" ID="Q217" />
        <node TEXT="Q218 程序计数器在执行 Java 方法和 Native 方法时分别记录什么内容？ [p107]" ID="Q218" />
        <node TEXT="Q219 什么是虚拟机栈？请解释栈帧的定义及其生命周期。 [p108]" ID="Q219" />
        <node TEXT="Q220 栈帧内部包含哪些关键信息？各自的作用是什么？ [p108]" ID="Q220" />
        <node TEXT="Q221 什么是本地方法栈？它与虚拟机栈有什么区别，HotSpot 又是如何处理的？ [p108]" ID="Q221" />
        <node TEXT="Q222 请说明 Java 堆在 JVM 中的地位，以及为什么它是垃圾收集的重点区域。 [p109]" ID="Q222" />
        <node TEXT="Q223 从垃圾回收角度，Java 堆可以细分为哪些区域？各区域承担什么角色？ [p109]" ID="Q223" />
        <node TEXT="Q224 什么是方法区？它存储哪些数据？HotSpot 如何用永久代来实现方法区？ [p109]" ID="Q224" />
        <node TEXT="Q225 什么是运行时常量池？它和 Class 文件常量池有什么关系？ [p110]" ID="Q225" />
        <node TEXT="Q226 永久代和元空间有什么区别？为什么 Java 8 用元空间替代永久代？ [p110]" ID="Q226" />
        <node TEXT="Q227 元空间的本质是什么？使用本地内存会带来哪些实际影响？ [p110]" ID="Q227" />
        <node TEXT="Q228 什么是直接内存？它在 JVM 中处于什么位置，NIO 中如何使用它？ [p111]" ID="Q228" />
        <node TEXT="Q265 请说明字节码与 JIT 在 JVM 中是如何工作的，以及它们对跨平台的意义。 [p123]" ID="Q265" />
      </node>
      <node TEXT="对象回收、引用与 OOM · 核心（22题）" ID="gc" FOLDED="true">
        <node TEXT="Q229 请描述新生代的组成，以及 Eden 区在其中的作用。 [p111]" ID="Q229" />
        <node TEXT="Q230 SurvivorFrom 和 SurvivorTo 在 Minor GC 中分别承担什么角色？ [p111]" ID="Q230" />
        <node TEXT="Q231 请详细说明 Minor GC 的执行过程（复制—清空—互换）。 [p112]" ID="Q231" />
        <node TEXT="Q232 对象在新生代的年龄是如何增长的？什么情况下会直接进入老年代？ [p112]" ID="Q232" />
        <node TEXT="Q233 请说明老年代的特点，以及 Major GC / Full GC 通常在什么条件下被触发。 [p112]" ID="Q233" />
        <node TEXT="Q234 Major GC 采用什么算法？它会产生哪些问题？ [p113]" ID="Q234" />
        <node TEXT="Q235 当出现内存溢出（OOM）时，常见的溢出场景有哪些？应如何排查定位？ [p113]" ID="Q235" />
        <node TEXT="Q236 如何确定一块内存中的对象是&quot;垃圾&quot;？引用计数法的原理及其缺陷是什么？ [p113]" ID="Q236" />
        <node TEXT="Q237 请说明可达性分析（Reachability Analysis）是如何判断对象是否可回收的。 [p114]" ID="Q237" />
        <node TEXT="Q238 不可达对象是否一定会被回收？请说明两次标记的过程。 [p114]" ID="Q238" />
        <node TEXT="Q239 什么是 GC Roots？在 Java 中哪些对象可以作为 GC Roots？ [p114]" ID="Q239" />
        <node TEXT="Q240 Java 有哪四种引用类型？它们各自的回收时机与特点是什么？ [p115]" ID="Q240" />
        <node TEXT="Q241 强引用为什么是 Java 内存泄漏的主要原因之一？请结合实际说明。 [p115]" ID="Q241" />
        <node TEXT="Q242 软引用的回收时机是什么？它在工程中有哪些典型应用场景？ [p115]" ID="Q242" />
        <node TEXT="Q243 弱引用和虚引用有什么区别？它们各自的使用用途是什么？ [p116]" ID="Q243" />
        <node TEXT="Q244 请说明标记-清除（Mark-Sweep）算法的工作原理及其最大缺点。 [p116]" ID="Q244" />
        <node TEXT="Q245 复制（Copying）算法是如何解决内存碎片问题的？它有什么代价？ [p116]" ID="Q245" />
        <node TEXT="Q246 标记-整理（Mark-Compact）算法的过程是什么？适用于什么场景？ [p117]" ID="Q246" />
        <node TEXT="Q247 分代收集算法的核心思想是什么？为什么新生代和老年代要采用不同算法？ [p117]" ID="Q247" />
        <node TEXT="Q248 分区收集算法与分代收集算法有何区别？它的优势是什么？ [p117]" ID="Q248" />
        <node TEXT="Q249 新生代为什么一般采用复制算法？具体是如何划分内存的？ [p117]" ID="Q249" />
        <node TEXT="Q250 老年代为什么采用标记-整理而非复制算法？请说明原因。 [p118]" ID="Q250" />
      </node>
      <node TEXT="垃圾收集器与历史演进 · 进阶（9题）" ID="collectors" FOLDED="true">
        <node TEXT="Q251 请介绍 Serial 垃圾收集器，它的特点与适用场景是什么？ [p118]" ID="Q251" />
        <node TEXT="Q252 ParNew 收集器与 Serial 收集器是什么关系？有什么区别？ [p118]" ID="Q252" />
        <node TEXT="Q253 Parallel Scavenge 收集器的设计目标是什么？它与 ParNew 的关键区别在哪里？ [p119]" ID="Q253" />
        <node TEXT="Q254 请介绍 Serial Old 和 Parallel Old 收集器，它们各自的定位是什么？ [p119]" ID="Q254" />
        <node TEXT="Q255 请说明 CMS 收集器的工作目标及其四个工作阶段。 [p119]" ID="Q255" />
        <node TEXT="Q256 在 CMS 的四个阶段中，哪些需要 STW，哪些可以和用户线程并发？ [p120]" ID="Q256" />
        <node TEXT="Q257 CMS 收集器存在哪些缺点或问题？ [p120]" ID="Q257" />
        <node TEXT="Q258 相比 CMS，G1 收集器有哪些主要改进？ [p120]" ID="Q258" />
        <node TEXT="Q259 G1 收集器是如何实现&quot;可预测停顿时间&quot;的？ [p121]" ID="Q259" />
      </node>
      <node TEXT="类加载与双亲委派 · 核心（5题）" ID="classloading" FOLDED="true">
        <node TEXT="Q260 请整体说明 JVM 类加载机制的五个阶段（加载、验证、准备、解析、初始化）。 [p121]" ID="Q260" />
        <node TEXT="Q261 类加载的&quot;准备&quot;阶段为类变量赋初值有什么容易踩坑的地方？ [p122]" ID="Q261" />
        <node TEXT="Q262 JVM 提供了哪三种类加载器？各自负责加载什么路径的类？ [p122]" ID="Q262" />
        <node TEXT="Q263 什么是双亲委派模型？它解决了什么问题？ [p122]" ID="Q263" />
        <node TEXT="Q264 请举一个破坏双亲委派模型的例子，并说明自定义类加载器的应用场景。 [p122]" ID="Q264" />
      </node>
    </node>
    <node TEXT="Spring 与应用开发（74题）" ID="spring" POSITION="right" FOLDED="true">
      <node TEXT="IoC、Bean 生命周期与循环依赖 · 核心（27题）" ID="ioc" FOLDED="true">
        <node TEXT="Q266 什么是 Spring 框架？它的核心设计思想是什么？ [p123]" ID="Q266" />
        <node TEXT="Q267 Spring 主要由哪些模块组成？请列举并说明其作用。 [p124]" ID="Q267" />
        <node TEXT="Q268 什么是 IOC（控制反转）？请解释其本质。 [p124]" ID="Q268" />
        <node TEXT="Q269 什么是 DI（依赖注入）？它与 IOC 是什么关系？ [p124]" ID="Q269" />
        <node TEXT="Q270 依赖注入有哪几种方式？各自的优缺点是什么？ [p124]" ID="Q270" />
        <node TEXT="Q271 构造器注入和 setter 注入该如何选择？ [p125]" ID="Q271" />
        <node TEXT="Q272 @Autowired 和@Resource 注解有什么区别？ [p125]" ID="Q272" />
        <node TEXT="Q273 @Autowired 默认按什么方式装配？如何实现按名称装配？ [p126]" ID="Q273" />
        <node TEXT="Q274 @Resource 的装配顺序是怎样的？ [p126]" ID="Q274" />
        <node TEXT="Q275 什么是 BeanFactory？它在 Spring 中承担什么角色？ [p126]" ID="Q275" />
        <node TEXT="Q276 ApplicationContext 和 BeanFactory 有什么区别？ [p127]" ID="Q276" />
        <node TEXT="Q277 ApplicationContext 有哪些常见实现类？ [p127]" ID="Q277" />
        <node TEXT="Q284 请描述 Spring Bean 的完整生命周期。 [p129]" ID="Q284" />
        <node TEXT="Q285 Bean 生命周期中 Aware 接口的作用是什么？ [p130]" ID="Q285" />
        <node TEXT="Q286 BeanPostProcessor 在生命周期中起什么作用？ [p130]" ID="Q286" />
        <node TEXT="Q287 InitializingBean 和 init-method 的关系是什么？ [p131]" ID="Q287" />
        <node TEXT="Q288 DisposableBean 和 destroy-method 的作用是什么？ [p131]" ID="Q288" />
        <node TEXT="Q289 Spring Bean 有哪些作用域？默认是哪种？ [p131]" ID="Q289" />
        <node TEXT="Q290 singleton 和 prototype 作用域的区别及适用场景？ [p132]" ID="Q290" />
        <node TEXT="Q291 request、session、global-session 作用域分别用于什么场景？ [p132]" ID="Q291" />
        <node TEXT="Q292 基于 XML 配置，Spring 有哪几种注入 Bean 的方式？ [p132]" ID="Q292" />
        <node TEXT="Q293 Spring 框架中运用了哪些设计模式？请举例说明。 [p133]" ID="Q293" />
        <node TEXT="Q336 什么是 Spring 中的循环依赖？它是如何产生的？ [p149]" ID="Q336" />
        <node TEXT="Q337 Spring 是如何通过三级缓存解决循环依赖的？ [p149]" ID="Q337" />
        <node TEXT="Q338 三级缓存中每一级分别缓存什么对象？ [p149]" ID="Q338" />
        <node TEXT="Q339 为什么构造器注入无法解决循环依赖？ [p150]" ID="Q339" />
        <node TEXT="Q340 哪些情况下的循环依赖 Spring 无法解决？ [p150]" ID="Q340" />
      </node>
      <node TEXT="AOP 与代理 · 核心（6题）" ID="aop" FOLDED="true">
        <node TEXT="Q278 什么是 Spring 的 AOP？它解决了什么问题？ [p127]" ID="Q278" />
        <node TEXT="Q279 AOP 中的核心概念（切面、连接点、通知、切点）分别指什么？ [p128]" ID="Q279" />
        <node TEXT="Q280 AOP 的实现技术分为哪几类？ [p128]" ID="Q280" />
        <node TEXT="Q281 静态代理和动态代理的区别是什么？ [p128]" ID="Q281" />
        <node TEXT="Q282 JDK 动态代理和 CGLIB 动态代理有何区别？ [p129]" ID="Q282" />
        <node TEXT="Q283 什么情况下 Spring AOP 会使用 CGLIB 而不是 JDK 动态代理？ [p129]" ID="Q283" />
      </node>
      <node TEXT="Spring MVC 与异常处理 · 核心（11题）" ID="mvc" FOLDED="true">
        <node TEXT="Q294 简述 Spring MVC 的整体工作流程。 [p133]" ID="Q294" />
        <node TEXT="Q295 DispatcherServlet 在 Spring MVC 中的作用是什么？ [p134]" ID="Q295" />
        <node TEXT="Q296 HandlerMapping、HandlerAdapter、ViewResolver 各自职责？ [p134]" ID="Q296" />
        <node TEXT="Q297 Spring MVC 中 Handler（Controller）需要开发者自己开发吗？ [p134]" ID="Q297" />
        <node TEXT="Q298 如何在 Spring MVC 中实现转发和重定向？ [p135]" ID="Q298" />
        <node TEXT="Q299 Spring MVC 有哪些常用注解？ [p135]" ID="Q299" />
        <node TEXT="Q300 @RequestBody 和@ResponseBody 注解的作用是什么？ [p135]" ID="Q300" />
        <node TEXT="Q301 @RequestMapping 注解可以用在类上和方法上吗？区别是什么？ [p136]" ID="Q301" />
        <node TEXT="Q302 Spring MVC 和 Struts2 相比有什么优势？Spring MVC 与 Spring 是什么关系？ [p136]" ID="Q302" />
        <node TEXT="Q319 如何使用 Spring Boot 实现全局异常处理？ [p143]" ID="Q319" />
        <node TEXT="Q320 @ControllerAdvice 和@ExceptionHandler 如何使用？ [p143]" ID="Q320" />
      </node>
      <node TEXT="Spring Boot 自动配置与运行 · 核心（21题）" ID="boot" FOLDED="true">
        <node TEXT="Q303 什么是 SpringBoot？为什么要用 SpringBoot？ [p137]" ID="Q303" />
        <node TEXT="Q304 SpringBoot 有哪些主要优点？ [p137]" ID="Q304" />
        <node TEXT="Q305 @SpringBootApplication 核心注解由哪几个注解组成？ [p137]" ID="Q305" />
        <node TEXT="Q306 @EnableAutoConfiguration 的作用是什么？如何排除某个自动配置？ [p138]" ID="Q306" />
        <node TEXT="Q307 @ComponentScan 的作用是什么？ [p138]" ID="Q307" />
        <node TEXT="Q308 什么是 Spring Boot 的自动配置（Auto-configuration）原理？ [p138]" ID="Q308" />
        <node TEXT="Q309 Spring Boot 自动配置是如何基于条件注解实现的？ [p139]" ID="Q309" />
        <node TEXT="Q310 什么是 Spring Boot Starter？它解决了什么问题？ [p139]" ID="Q310" />
        <node TEXT="Q311 Starter 的命名规范是什么？官方与第三方有何区别？ [p140]" ID="Q311" />
        <node TEXT="Q312 常用的一些 Spring Boot Starter 有哪些？ [p140]" ID="Q312" />
        <node TEXT="Q313 举例说明 spring-boot-starter-web 都做了什么？ [p140]" ID="Q313" />
        <node TEXT="Q314 运行 Spring Boot 应用有哪几种方式？ [p141]" ID="Q314" />
        <node TEXT="Q315 Spring Boot 需要独立的 Web 容器吗？为什么？ [p141]" ID="Q315" />
        <node TEXT="Q316 如何在 Spring Boot 启动时运行一些特定的代码？ [p141]" ID="Q316" />
        <node TEXT="Q317 ApplicationRunner 和 CommandLineRunner 有什么区别？ [p142]" ID="Q317" />
        <node TEXT="Q318 什么是 Spring Boot Actuator？它有什么用？ [p142]" ID="Q318" />
        <node TEXT="Q321 Spring Boot 配置文件的加载顺序是怎样的？ [p143]" ID="Q321" />
        <node TEXT="Q322 application 和 bootstrap 配置文件有什么区别？ [p144]" ID="Q322" />
        <node TEXT="Q323 Spring Boot 如何实现热部署？ [p144]" ID="Q323" />
        <node TEXT="Q324 Spring Boot、Spring MVC 和 Spring 三者之间是什么关系？ [p144]" ID="Q324" />
        <node TEXT="Q325 如何理解&quot;约定大于配置&quot;在 Spring Boot 中的体现？ [p145]" ID="Q325" />
      </node>
      <node TEXT="应用事件机制 · 进阶（4题）" ID="events" FOLDED="true">
        <node TEXT="Q326 Spring 的事件机制（ApplicationEvent）是怎样的？ [p145]" ID="Q326" />
        <node TEXT="Q327 Spring 提供了哪些内置的 Context 事件？ [p146]" ID="Q327" />
        <node TEXT="Q328 如何自定义并发布一个 Spring 事件？ [p146]" ID="Q328" />
        <node TEXT="Q329 ApplicationListener 和@EventListener 如何使用？ [p146]" ID="Q329" />
      </node>
      <node TEXT="事务传播与失效场景 · 核心（5题）" ID="spring-tx" FOLDED="true">
        <node TEXT="Q341 什么是 Spring 事务传播机制？有哪些传播行为？ [p151]" ID="Q341" />
        <node TEXT="Q342 REQUIRED 和 REQUIRES_NEW 传播行为的区别是什么？ [p151]" ID="Q342" />
        <node TEXT="Q343 NESTED、SUPPORTS、NOT_SUPPORTED、MANDATORY、NEVER 分别是什么 含义？ [p151]" ID="Q343" />
        <node TEXT="Q344 @Transactional 注解在什么场景下会失效？ [p152]" ID="Q344" />
        <node TEXT="Q345 如何确保@Transactional 事务在同类方法调用中也能生效？ [p152]" ID="Q345" />
      </node>
    </node>
    <node TEXT="数据库与缓存（123题）" ID="data" POSITION="left" FOLDED="true">
      <node TEXT="存储引擎与场景 · 进阶（6题）" ID="engines" FOLDED="true">
        <node TEXT="Q346 MySQL 常见的存储引擎有哪些？各有什么特点？ [p153]" ID="Q346" />
        <node TEXT="Q347 InnoDB 和 MyISAM 的核心区别是什么？ [p153]" ID="Q347" />
        <node TEXT="Q348 InnoDB 存储引擎适用于哪些场景？ [p153]" ID="Q348" />
        <node TEXT="Q349 为什么 MyISAM 不适合做写多读少的业务？ [p153]" ID="Q349" />
        <node TEXT="Q350 Memory 存储引擎的特点和适用场景是什么？ [p154]" ID="Q350" />
        <node TEXT="Q351 TokuDB 的 Fractal Tree 结构有什么优势？适合什么场景？ [p154]" ID="Q351" />
      </node>
      <node TEXT="B+树与索引设计 · 核心（15题）" ID="indexes" FOLDED="true">
        <node TEXT="Q352 什么是数据库索引？为什么要建索引？ [p154]" ID="Q352" />
        <node TEXT="Q353 为什么 MySQL 索引默认使用 B+树而不是 B 树或哈希？ [p154]" ID="Q353" />
        <node TEXT="Q354 请说明 InnoDB 的 B+树物理存储结构。 [p155]" ID="Q354" />
        <node TEXT="Q355 什么是聚簇索引和非聚簇（二级）索引？区别是什么？ [p155]" ID="Q355" />
        <node TEXT="Q356 为什么建议使用自增整型作为 InnoDB 主键？ [p155]" ID="Q356" />
        <node TEXT="Q357 建立索引时有哪些常见原则？ [p155]" ID="Q357" />
        <node TEXT="Q358 什么是索引的最左前缀匹配原则？ [p156]" ID="Q358" />
        <node TEXT="Q359 联合索引(a,b,c)下，哪些查询能命中索引？ [p156]" ID="Q359" />
        <node TEXT="Q360 哪些情况下会导致 MySQL 索引失效？ [p156]" ID="Q360" />
        <node TEXT="Q361 为什么说“索引列不能参与计算，要保持列干净”？ [p156]" ID="Q361" />
        <node TEXT="Q362 为什么使用 like '%关键字'开头的模糊查询会失效？ [p157]" ID="Q362" />
        <node TEXT="Q363 为什么索引并不是越多越好，要限制索引数量？ [p157]" ID="Q363" />
        <node TEXT="Q364 为什么尽量选择区分度高的列建索引？区分度怎么衡量？ [p157]" ID="Q364" />
        <node TEXT="Q396 什么是覆盖索引？为什么它能提升性能？ [p165]" ID="Q396" />
        <node TEXT="Q408 为什么说“尽量删除不再使用或很少使用的索引”？ [p169]" ID="Q408" />
      </node>
      <node TEXT="关系建模与范式 · 进阶（2题）" ID="schema" FOLDED="true">
        <node TEXT="Q365 什么是数据库三范式？各自含义是什么？ [p158]" ID="Q365" />
        <node TEXT="Q366 第一范式（1NF）的具体要求是什么？ [p158]" ID="Q366" />
      </node>
      <node TEXT="ACID、隔离级别与 MVCC · 核心（16题）" ID="db-tx" FOLDED="true">
        <node TEXT="Q330 Spring 中事务的 ACID 特性分别指什么？ [p147]" ID="Q330" />
        <node TEXT="Q331 数据库并发事务会带来哪些问题？ [p147]" ID="Q331" />
        <node TEXT="Q332 Spring/SQL 定义了哪几种事务隔离级别？ [p147]" ID="Q332" />
        <node TEXT="Q333 MySQL 的默认事务隔离级别是什么？为何能避免幻读？ [p148]" ID="Q333" />
        <node TEXT="Q367 什么是数据库事务？事务的 ACID 属性包含哪些？ [p158]" ID="Q367" />
        <node TEXT="Q368 请解释事务的原子性（Atomicity）及其实现。 [p158]" ID="Q368" />
        <node TEXT="Q369 事务的一致性（Consistency）如何保证？ [p158]" ID="Q369" />
        <node TEXT="Q370 事务的隔离性（Isolation）是什么意思？ [p159]" ID="Q370" />
        <node TEXT="Q371 事务的持久性（Durability）如何实现？ [p159]" ID="Q371" />
        <node TEXT="Q372 MySQL 支持哪些事务隔离级别？默认是哪个？ [p159]" ID="Q372" />
        <node TEXT="Q373 什么是脏读、不可重复读和幻读？ [p160]" ID="Q373" />
        <node TEXT="Q374 不同隔离级别分别能解决哪些并发问题？ [p160]" ID="Q374" />
        <node TEXT="Q375 不可重复读和幻读的本质区别是什么？ [p160]" ID="Q375" />
        <node TEXT="Q376 什么是 MVCC 多版本并发控制？它解决什么问题？ [p160]" ID="Q376" />
        <node TEXT="Q377 请说明 MVCC 的基本实现原理。 [p161]" ID="Q377" />
        <node TEXT="Q409 请说明“读已提交”与“可重复读”在 InnoDB 中的实现差异。 [p169]" ID="Q409" />
      </node>
      <node TEXT="数据库锁与死锁 · 核心（10题）" ID="db-locks" FOLDED="true">
        <node TEXT="Q378 数据库锁按粒度分为哪几类？各自特点是什么？ [p161]" ID="Q378" />
        <node TEXT="Q379 什么是行级锁？InnoDB 如何使用行级锁？ [p161]" ID="Q379" />
        <node TEXT="Q380 什么是表级锁？共享读锁和独占写锁有何区别？ [p161]" ID="Q380" />
        <node TEXT="Q381 行锁、表锁、页锁应如何对比选型？ [p162]" ID="Q381" />
        <node TEXT="Q382 什么是间隙锁（Gap Lock）？它解决什么问题？ [p162]" ID="Q382" />
        <node TEXT="Q383 什么是乐观锁？如何实现？ [p162]" ID="Q383" />
        <node TEXT="Q384 什么是悲观锁？如何实现？ [p162]" ID="Q384" />
        <node TEXT="Q385 乐观锁和悲观锁如何对比选型？ [p163]" ID="Q385" />
        <node TEXT="Q386 什么是死锁？MySQL 中如何避免死锁？ [p163]" ID="Q386" />
        <node TEXT="Q410 什么是 Next-Key Lock（临键锁）？ [p169]" ID="Q410" />
      </node>
      <node TEXT="分库分表 · 进阶（4题）" ID="sharding" FOLDED="true">
        <node TEXT="Q387 什么是分库分表？为什么需要分库分表？ [p163]" ID="Q387" />
        <node TEXT="Q388 垂直切分和水平切分的区别是什么？ [p163]" ID="Q388" />
        <node TEXT="Q389 水平分表常见的分片路由规则有哪些？ [p164]" ID="Q389" />
        <node TEXT="Q390 分库分表会带来哪些新问题？如何应对？ [p164]" ID="Q390" />
      </node>
      <node TEXT="SQL 优化与执行计划 · 核心（6题）" ID="sql" FOLDED="true">
        <node TEXT="Q391 如何进行 SQL 优化？请给出思路。 [p164]" ID="Q391" />
        <node TEXT="Q392 请说明存储过程的优化思路。 [p164]" ID="Q392" />
        <node TEXT="Q393 为什么存储过程中要尽量少用游标？ [p165]" ID="Q393" />
        <node TEXT="Q394 如何使用 EXPLAIN 分析 SQL 执行计划？ [p165]" ID="Q394" />
        <node TEXT="Q395 EXPLAIN 中的 type 访问类型有什么含义？ [p165]" ID="Q395" />
        <node TEXT="Q407 如何排查线上一条慢 SQL？请列出步骤。 [p168]" ID="Q407" />
      </node>
      <node TEXT="日志、恢复与主从复制 · 核心（10题）" ID="db-logs" FOLDED="true">
        <node TEXT="Q397 什么是 redo log？它有什么作用？ [p166]" ID="Q397" />
        <node TEXT="Q398 什么是 undo log？它有什么作用？ [p166]" ID="Q398" />
        <node TEXT="Q399 redo log 和 undo log 的区别是什么？ [p166]" ID="Q399" />
        <node TEXT="Q400 MySQL 崩溃恢复大致是如何进行的？ [p167]" ID="Q400" />
        <node TEXT="Q401 请说明 MySQL 主从复制的原理。 [p167]" ID="Q401" />
        <node TEXT="Q402 主从复制有什么作用？常见应用场景是什么？ [p167]" ID="Q402" />
        <node TEXT="Q403 主从延迟常见原因及优化手段有哪些？ [p167]" ID="Q403" />
        <node TEXT="Q404 bin-log 有哪几种格式？各有什么特点？ [p168]" ID="Q404" />
        <node TEXT="Q405 什么是两阶段提交（2PC）？为什么需要它？ [p168]" ID="Q405" />
        <node TEXT="Q406 两阶段提交存在哪些缺点？ [p168]" ID="Q406" />
      </node>
      <node TEXT="Redis 数据类型与用途 · 核心（9题）" ID="redis-types" FOLDED="true">
        <node TEXT="Q411 请简述 Redis 是什么，它有哪些核心特点？ [p169]" ID="Q411" />
        <node TEXT="Q412 Redis 支持哪些数据类型，各自适合什么业务场景？ [p170]" ID="Q412" />
        <node TEXT="Q413 String 类型一个值最大能存多少，常用于哪些功能？ [p170]" ID="Q413" />
        <node TEXT="Q414 Hash 类型适合存放什么数据，举一个实际例子说明？ [p170]" ID="Q414" />
        <node TEXT="Q415 List 数据结构能实现哪些功能，如何实现分页？ [p171]" ID="Q415" />
        <node TEXT="Q416 Set 集合除了去重，还能做哪些运算？ [p171]" ID="Q416" />
        <node TEXT="Q417 Sorted Set 相比 Set 多了什么能力，典型应用有哪些？ [p171]" ID="Q417" />
        <node TEXT="Q463 Redis 最适合哪些应用场景？ [p186]" ID="Q463" />
        <node TEXT="Q468 Redis 相比 Memcached 有哪些优势？ [p188]" ID="Q468" />
      </node>
      <node TEXT="Redis 持久化 · 核心（7题）" ID="redis-persistence" FOLDED="true">
        <node TEXT="Q418 Redis 的持久化机制有哪几种，RDB 的原理是什么？ [p172]" ID="Q418" />
        <node TEXT="Q419 AOF 持久化的原理是什么，有哪些配置项？ [p172]" ID="Q419" />
        <node TEXT="Q420 请对比 RDB 和 AOF 各自的优缺点？ [p172]" ID="Q420" />
        <node TEXT="Q421 什么是 AOF 重写（rewrite），它有什么作用？ [p173]" ID="Q421" />
        <node TEXT="Q422 AOF 的 appendfsync 策略有哪几种，如何选型？ [p173]" ID="Q422" />
        <node TEXT="Q423 主节点做内存快照（RDB）有什么性能隐患？ [p173]" ID="Q423" />
        <node TEXT="Q424 为什么 Redis 要把所有数据放在内存中，断电后数据会丢吗？ [p174]" ID="Q424" />
      </node>
      <node TEXT="过期、淘汰与内存管理 · 核心（9题）" ID="redis-memory" FOLDED="true">
        <node TEXT="Q425 Redis 的键过期删除策略有哪几种？ [p174]" ID="Q425" />
        <node TEXT="Q426 请说明定期删除的具体工作机制？ [p174]" ID="Q426" />
        <node TEXT="Q427 Redis 的内存淘汰（回收）策略有哪些？ [p174]" ID="Q427" />
        <node TEXT="Q428 各种内存淘汰策略应该如何选择？ [p175]" ID="Q428" />
        <node TEXT="Q429 Redis 的回收进程是如何工作的？ [p175]" ID="Q429" />
        <node TEXT="Q430 当 Redis 内存用完（达到上限）会发生什么？ [p175]" ID="Q430" />
        <node TEXT="Q460 如何设置 Redis key 的过期时间和永久有效？ [p185]" ID="Q460" />
        <node TEXT="Q461 如何对 Redis 做内存优化，降低内存占用？ [p185]" ID="Q461" />
        <node TEXT="Q462 一个 Redis 实例最多能存放多少 key，集合能存多少元素？ [p186]" ID="Q462" />
      </node>
      <node TEXT="缓存异常与数据库一致性 · 核心（10题）" ID="cache" FOLDED="true">
        <node TEXT="Q431 什么是缓存穿透，如何解决这个问题？ [p176]" ID="Q431" />
        <node TEXT="Q432 什么是缓存雪崩，有哪些应对方案？ [p176]" ID="Q432" />
        <node TEXT="Q433 什么是缓存击穿，它和缓存雪崩有什么区别？ [p176]" ID="Q433" />
        <node TEXT="Q434 什么是布隆过滤器，它的基本原理是什么？ [p177]" ID="Q434" />
        <node TEXT="Q435 布隆过滤器在解决缓存穿透中是如何应用的？ [p177]" ID="Q435" />
        <node TEXT="Q436 布隆过滤器有什么优缺点，为什么会有误判？ [p177]" ID="Q436" />
        <node TEXT="Q437 使用 Redis 做缓存时，如何保证缓存与数据库的数据一致性？ [p178]" ID="Q437" />
        <node TEXT="Q438 什么是 Cache-Aside 模式，读写分别怎么处理？ [p178]" ID="Q438" />
        <node TEXT="Q439 更新数据时，应该更新缓存还是删除缓存，为什么？ [p178]" ID="Q439" />
        <node TEXT="Q440 缓存与数据库一致性有哪些常见“坑”需要规避？ [p179]" ID="Q440" />
      </node>
      <node TEXT="Redis 复制、哨兵与集群 · 核心（8题）" ID="redis-ha" FOLDED="true">
        <node TEXT="Q447 请说明 Redis 的主从同步（复制）机制原理？ [p181]" ID="Q447" />
        <node TEXT="Q448 主从复制中全量同步和增量同步分别是怎样的？ [p181]" ID="Q448" />
        <node TEXT="Q449 Redis 哨兵（Sentinel）的作用是什么？ [p182]" ID="Q449" />
        <node TEXT="Q450 Redis Cluster 集群的原理是什么，解决什么问题？ [p182]" ID="Q450" />
        <node TEXT="Q451 请解释 Redis 集群的哈希槽（hash slot）概念及数量？ [p182]" ID="Q451" />
        <node TEXT="Q452 Redis 集群的主从复制模型是怎样的，为什么需要它？ [p183]" ID="Q452" />
        <node TEXT="Q453 什么情况下 Redis 集群会整体不可用？ [p183]" ID="Q453" />
        <node TEXT="Q454 Redis 集群最大节点个数和数据库选择有什么限制？ [p183]" ID="Q454" />
      </node>
      <node TEXT="Redis 性能与运维 · 进阶（11题）" ID="redis-ops" FOLDED="true">
        <node TEXT="Q455 什么是大 key，它有什么危害，如何排查和处理？ [p183]" ID="Q455" />
        <node TEXT="Q456 什么是热 key，如何发现并解决热 key 问题？ [p184]" ID="Q456" />
        <node TEXT="Q457 Redis 的 Pipeline 有什么好处，为什么要用它？ [p184]" ID="Q457" />
        <node TEXT="Q458 怎么理解 Redis 事务，它和关系型数据库事务有何不同？ [p184]" ID="Q458" />
        <node TEXT="Q459 Redis 事务相关命令有哪些，分别起什么作用？ [p185]" ID="Q459" />
        <node TEXT="Q464 如何用 Redis 实现异步队列，有哪些方式？ [p186]" ID="Q464" />
        <node TEXT="Q465 如果 Redis 中有 1 亿个 key，如何找出以某固定前缀开头的 10 万个 key？ [p187]" ID="Q465" />
        <node TEXT="Q466 Redis 为什么这么快，核心原因有哪些？ [p187]" ID="Q466" />
        <node TEXT="Q467 什么是渐进式 ReHash，为什么 Redis 要这么做？ [p187]" ID="Q467" />
        <node TEXT="Q469 如何给 Redis 设置密码并验证？ [p188]" ID="Q469" />
        <node TEXT="Q470 如何测试 Redis 服务的连通性？ [p188]" ID="Q470" />
      </node>
    </node>
    <node TEXT="消息与分布式系统（113题）" ID="distributed" POSITION="right" FOLDED="true">
      <node TEXT="消息模型与中间件选型 · 核心（8题）" ID="mq-basics" FOLDED="true">
        <node TEXT="Q471 什么是消息队列？它在分布式系统中扮演什么角色？ [p189]" ID="Q471" />
        <node TEXT="Q472 为什么要引入消息队列，它主要解决了哪些架构痛点？ [p189]" ID="Q472" />
        <node TEXT="Q473 消息队列常见的使用场景有哪些？请结合实际举例。 [p189]" ID="Q473" />
        <node TEXT="Q474 消息队列的队列模型和发布/订阅模型有什么区别？ [p190]" ID="Q474" />
        <node TEXT="Q475 请解释 Producer、Consumer、Broker、Topic、队列/分区、Consumer Group、 offset 这些核心术语。 [p190]" ID="Q475" />
        <node TEXT="Q476 JMS 中的 P2P 和 Pub/Sub 消息模型各有什么特点？ [p190]" ID="Q476" />
        <node TEXT="Q482 请对比 Kafka 与 RabbitMQ，从消息模型、路由、投递模式、适用场景等维度说明 二者差异。 [p192]" ID="Q482" />
        <node TEXT="Q525 如果让你从零设计一个消息中间件，你会如何规划整体架构与核心模块？ [p204]" ID="Q525" />
      </node>
      <node TEXT="可靠投递、幂等与重试 · 核心（11题）" ID="mq-reliability" FOLDED="true">
        <node TEXT="Q477 如何保证消息不丢失？请从生产、存储、消费三个阶段说明。 [p190]" ID="Q477" />
        <node TEXT="Q478 生产者发送消息时如何配合 Broker 响应来保证消息可靠投递？ [p191]" ID="Q478" />
        <node TEXT="Q479 存储阶段如何保证消息不丢失？单机与集群多副本机制分别怎么做？ [p191]" ID="Q479" />
        <node TEXT="Q480 消费阶段有哪些容易出错的地方会导致消息丢失？如何正确返回消费确认？ [p191]" ID="Q480" />
        <node TEXT="Q481 为什么消息可靠性增强往往会带来性能下降？如何权衡？ [p191]" ID="Q481" />
        <node TEXT="Q483 为什么消息重复不可避免？请从生产和消费两端分析。 [p192]" ID="Q483" />
        <node TEXT="Q484 什么是幂等？如何在业务上处理重复消息？ [p192]" ID="Q484" />
        <node TEXT="Q485 请列举几种保证消费幂等的常用技术方案（如唯一索引、乐观锁、token 等）。 [p192]" ID="Q485" />
        <node TEXT="Q486 如何用数据库唯一约束或版本号机制实现消息幂等？ [p193]" ID="Q486" />
        <node TEXT="Q503 什么是死信队列？RocketMQ 中消息重试失败后会如何处理？ [p197]" ID="Q503" />
        <node TEXT="Q504 请说明 RocketMQ 消费失败的重试机制与延迟队列的关系。 [p198]" ID="Q504" />
      </node>
      <node TEXT="消息顺序性 · 核心（3题）" ID="mq-order" FOLDED="true">
        <node TEXT="Q487 如何保证消息的有序性？全局有序和部分有序分别如何实现？ [p193]" ID="Q487" />
        <node TEXT="Q488 为什么 RocketMQ 和 Kafka 默认都不保证严格的全局有序消费？ [p193]" ID="Q488" />
        <node TEXT="Q489 保证消息严格有序在发送端、存储端、接收端分别面临哪些困难？ [p194]" ID="Q489" />
      </node>
      <node TEXT="积压、拉取与重平衡 · 进阶（8题）" ID="mq-backlog" FOLDED="true">
        <node TEXT="Q490 如何处理消息堆积（积压）问题？请从定位原因到扩容一步步说明。 [p194]" ID="Q490" />
        <node TEXT="Q491 消息堆积时如果盲目增加消费者为什么可能无效？队列数与消费者数的关系是什 么？ [p194]" ID="Q491" />
        <node TEXT="Q492 什么是推模式？它有什么优缺点？适用于什么场景？ [p194]" ID="Q492" />
        <node TEXT="Q493 什么是拉模式？它有什么优缺点？适用于什么场景？ [p195]" ID="Q493" />
        <node TEXT="Q494 RocketMQ 和 Kafka 为什么都选择了拉模式？它们如何克服拉模式的缺点？ [p195]" ID="Q494" />
        <node TEXT="Q495 请解释 RocketMQ 中的长轮询机制是如何实现准实时拉取消息的。 [p195]" ID="Q495" />
        <node TEXT="Q496 请解释 Kafka 中的长轮询（延迟拉取）机制是如何实现的。 [p195]" ID="Q496" />
        <node TEXT="Q514 Consumer 端的负载均衡（重平衡）是如何工作的？队列数和消费者数如何协调？ [p201]" ID="Q514" />
      </node>
      <node TEXT="事务消息与本地消息表 · 核心（7题）" ID="mq-tx" FOLDED="true">
        <node TEXT="Q497 事务消息要解决什么问题？它适用于什么业务场景？ [p196]" ID="Q497" />
        <node TEXT="Q498 请描述 RocketMQ 事务消息（半消息）的实现原理与全流程。 [p196]" ID="Q498" />
        <node TEXT="Q499 RocketMQ 事务消息中，如果提交或回滚消息发送失败怎么办？Broker 如何反查？ [p196]" ID="Q499" />
        <node TEXT="Q500 请对比 RocketMQ 事务消息与 Kafka 事务消息的本质区别。 [p197]" ID="Q500" />
        <node TEXT="Q501 为什么说 QMQ（本地消息表）的事务消息实现比 RocketMQ 更优？它与 RocketMQ 写入顺序有何不同？ [p197]" ID="Q501" />
        <node TEXT="Q502 本地消息表这种分布式事务实现方式是怎么工作的？有什么优缺点？ [p197]" ID="Q502" />
        <node TEXT="Q630 请说明基于 MQ（消息队列）的分布式事务方案是如何实现最终一致性的。 [p237]" ID="Q630" />
      </node>
      <node TEXT="RocketMQ 存储与路由 · 进阶（9题）" ID="rocketmq" FOLDED="true">
        <node TEXT="Q505 RocketMQ 的 Broker 存储涉及哪三类核心文件？各自作用是什么？ [p198]" ID="Q505" />
        <node TEXT="Q506 什么是 CommitLog、ConsumeQueue 和 IndexFile？消费者是如何通过它们查到 消息的？ [p198]" ID="Q506" />
        <node TEXT="Q507 请解释 RocketMQ 的消息刷盘机制，同步刷盘与异步刷盘如何取舍？ [p199]" ID="Q507" />
        <node TEXT="Q508 什么是页缓存与内存映射（mmap）？RocketMQ 如何利用它们提升性能？ [p199]" ID="Q508" />
        <node TEXT="Q509 什么是文件预分配和文件预热？RocketMQ 为什么要做这两个优化？ [p199]" ID="Q509" />
        <node TEXT="Q510 RocketMQ 的整体架构由哪些角色组成？NameServer 有什么特点？ [p199]" ID="Q510" />
        <node TEXT="Q511 请说明 RocketMQ 中 Producer 的路由发现、心跳与负载均衡重试机制。 [p200]" ID="Q511" />
        <node TEXT="Q512 为什么不建议在生产环境开启 RocketMQ 的自动创建主题 （autoCreateTopicEnable）？ [p200]" ID="Q512" />
        <node TEXT="Q513 什么是 RocketMQ 的发送消息故障延迟机制（sendLatencyFaultEnable）？ [p200]" ID="Q513" />
      </node>
      <node TEXT="Kafka 日志与控制面 · 进阶（10题）" ID="kafka" FOLDED="true">
        <node TEXT="Q515 Kafka 的分布式存储结构是怎样的？一个 Topic、分区、日志段之间是什么关系？ [p201]" ID="Q515" />
        <node TEXT="Q516 Kafka 的索引设计有什么亮点？请说明稀疏索引、相对位移和冷热分区二分查找。 [p201]" ID="Q516" />
        <node TEXT="Q517 请解释 Kafka 日志段的写入与读取流程。 [p201]" ID="Q517" />
        <node TEXT="Q518 什么是 Kafka 的 Controller？它依赖 ZooKeeper 做了哪些事？ [p202]" ID="Q518" />
        <node TEXT="Q519 Kafka Controller 底层为什么从多线程加锁改为单线程事件队列模型？ [p202]" ID="Q519" />
        <node TEXT="Q520 请说明 Kafka Broker 处理请求的 Reactor 模型，以及数据类与控制类请求的优先级 如何实现。 [p202]" ID="Q520" />
        <node TEXT="Q521 Kafka 为什么要抛弃 ZooKeeper？KRaft（Controller Quorum）带来了哪些改 进？ [p203]" ID="Q521" />
        <node TEXT="Q522 为什么说消息存磁盘还能这么快？顺序读写、mmap、sendfile 零拷贝分别解决了 什么问题？ [p203]" ID="Q522" />
        <node TEXT="Q523 请对比 RocketMQ 和 Kafka 在底层存储与零拷贝实现上的异同。 [p203]" ID="Q523" />
        <node TEXT="Q524 什么是零拷贝？在 Java 中如何通过 sendfile（FileChannel.transferTo）实现？ Kafka 和 RocketMQ 分别用到了什么？ [p204]" ID="Q524" />
      </node>
      <node TEXT="微服务、CAP 与 BASE · 核心（9题）" ID="dist-theory" FOLDED="true">
        <node TEXT="Q616 请简述你对微服务架构的理解，它与传统的单体（ALL IN ONE）应用相比有哪些核 心优势？ [p232]" ID="Q616" />
        <node TEXT="Q617 微服务与 SOA（面向服务架构）有什么区别和联系？ [p233]" ID="Q617" />
        <node TEXT="Q618 在微服务落地中，“拆分”和“集群”分别指什么？两者的目的有何不同？ [p233]" ID="Q618" />
        <node TEXT="Q619 请解释 CAP 理论，为什么说分布式系统最多只能同时满足其中两点？ [p233]" ID="Q619" />
        <node TEXT="Q620 CAP 中的 C、A、P 分别指什么？为什么说分区容错性 P 是分布式系统必须实现的？ [p234]" ID="Q620" />
        <node TEXT="Q621 请说明 CA、CP、AP 三类系统的取舍，并各举典型例子。 [p234]" ID="Q621" />
        <node TEXT="Q622 什么是 BASE 理论？它和 CAP 是什么关系？ [p235]" ID="Q622" />
        <node TEXT="Q623 请解释 BASE 中的“基本可用、软状态、最终一致”三要素。 [p235]" ID="Q623" />
        <node TEXT="Q624 关系型数据库遵循的 ACID 特性分别是什么？ [p235]" ID="Q624" />
      </node>
      <node TEXT="分布式事务：XA、3PC 与 TCC · 进阶（8题）" ID="dist-tx" FOLDED="true">
        <node TEXT="Q334 什么是分布式事务？为什么微服务中需要它？ [p148]" ID="Q334" />
        <node TEXT="Q335 XA 协议两阶段提交的过程是怎样的？ [p148]" ID="Q335" />
        <node TEXT="Q625 什么是分布式事务？为什么微服务架构下会产生分布式事务问题？ [p236]" ID="Q625" />
        <node TEXT="Q626 请描述 XA 两阶段提交（2PC）的完整执行流程。 [p236]" ID="Q626" />
        <node TEXT="Q627 2PC 在第一阶段如果某个参与者失败，整个事务如何处理？ [p236]" ID="Q627" />
        <node TEXT="Q628 XA 两阶段提交有哪些不足之处？ [p236]" ID="Q628" />
        <node TEXT="Q629 什么是 3PC（三阶段提交）？它相比 2PC 做了哪些改进？ [p237]" ID="Q629" />
        <node TEXT="Q631 什么是 TCC 事务模型？它和 2PC 有何本质区别？ [p237]" ID="Q631" />
      </node>
      <node TEXT="注册发现与 ZooKeeper · 进阶（6题）" ID="discovery" FOLDED="true">
        <node TEXT="Q632 在微服务架构中，注册中心（如 Zookeeper、Eureka）承担什么职责？ [p238]" ID="Q632" />
        <node TEXT="Q633 请对比 Eureka 和 Zookeeper 作为服务注册中心的差异（从 CAP 角度）。 [p238]" ID="Q633" />
        <node TEXT="Q634 什么是服务发现？客户端发现与服务端发现有何区别？ [p238]" ID="Q634" />
        <node TEXT="Q635 Dubbo 为什么常使用 Zookeeper 作为注册中心？ [p239]" ID="Q635" />
        <node TEXT="Q661 请描述 Zookeeper 的数据模型（znode）和核心角色（Leader/Follower）。 [p248]" ID="Q661" />
        <node TEXT="Q662 Zookeeper 如何保证一致性？请说明其选举与 ZAB 协议思想。 [p249]" ID="Q662" />
      </node>
      <node TEXT="熔断、降级、限流与排障 · 核心（9题）" ID="resilience" FOLDED="true">
        <node TEXT="Q636 什么是服务雪崩？熔断、降级、限流分别解决什么问题？ [p239]" ID="Q636" />
        <node TEXT="Q637 请介绍 Hystrix 的熔断机制，以及 Fallback 降级的作用。 [p240]" ID="Q637" />
        <node TEXT="Q638 Hystrix 如何实现故障隔离？为什么说线程池隔离能防止故障扩散？ [p240]" ID="Q638" />
        <node TEXT="Q639 请说明常见的四种限流算法：计数器、滑动窗口、漏桶、令牌桶。 [p240]" ID="Q639" />
        <node TEXT="Q640 计数器限流法有什么致命缺陷？滑动窗口是如何解决临界问题的？ [p241]" ID="Q640" />
        <node TEXT="Q641 漏桶算法和令牌桶算法有什么区别？各自适合什么场景？ [p241]" ID="Q641" />
        <node TEXT="Q642 在秒杀等高并发场景中，你会选择哪种限流算法？为什么？ [p241]" ID="Q642" />
        <node TEXT="Q655 Dubbo 提供了哪些集群容错模式？请说明 Failover、Failfast、Failsafe、 Failback、Forking 的适用场景。 [p246]" ID="Q655" />
        <node TEXT="Q665 请描述一个微服务调用超时导致故障的真实排查思路（从注册中心、负载均衡、熔 断、限流逐层分析）。 [p250]" ID="Q665" />
      </node>
      <node TEXT="负载均衡与一致性哈希 · 进阶（5题）" ID="loadbalancing" FOLDED="true">
        <node TEXT="Q643 负载均衡有哪些常见实现方式？请至少列举 DNS、反向代理、HTTP 重定向三种并 对比。 [p242]" ID="Q643" />
        <node TEXT="Q644 DNS 负载均衡有什么优点和缺点？ [p242]" ID="Q644" />
        <node TEXT="Q645 反向代理负载均衡的原理、优缺点是什么？ [p242]" ID="Q645" />
        <node TEXT="Q646 请说明 Dubbo 提供的四种负载均衡策略：Random、RoundRobin、 LeastActive、ConsistentHash。 [p243]" ID="Q646" />
        <node TEXT="Q647 Dubbo 的 ConsistentHash（一致性哈希）负载均衡有什么特点？适合什么场景？ [p243]" ID="Q647" />
      </node>
      <node TEXT="Spring Cloud、网关与链路追踪 · 进阶（9题）" ID="cloud" FOLDED="true">
        <node TEXT="Q648 什么是 Spring Cloud？它和 Spring Boot 是什么关系？ [p243]" ID="Q648" />
        <node TEXT="Q649 Spring Cloud Netflix 体系中包含哪些核心组件？各自职责是什么？ [p244]" ID="Q649" />
        <node TEXT="Q650 什么是 Feign？它和 Ribbon 是如何配合工作的？ [p244]" ID="Q650" />
        <node TEXT="Q651 请说明 Netflix Ribbon 的作用及其负载均衡定位。 [p244]" ID="Q651" />
        <node TEXT="Q652 什么是 Spring Cloud Config 和 Spring Cloud Bus？它们如何实现配置的动态刷 新？ [p245]" ID="Q652" />
        <node TEXT="Q653 什么是 API 网关？在微服务架构中网关一般承担哪些职责？ [p245]" ID="Q653" />
        <node TEXT="Q654 请对比 Dubbo 和 Spring Cloud 这两套微服务框架的定位与差异。 [p246]" ID="Q654" />
        <node TEXT="Q663 在微服务架构中，为什么需要统一的配置中心？配置中心要解决哪些问题？ [p249]" ID="Q663" />
        <node TEXT="Q664 分布式链路追踪解决什么问题？请你说明其基本原理（如 TraceId/SpanId 传递）。 [p249]" ID="Q664" />
      </node>
      <node TEXT="全局 ID 与雪花算法 · 进阶（2题）" ID="dist-id" FOLDED="true">
        <node TEXT="Q656 在分布式环境下，如何设计一套全局唯一的 ID 发号器？请列举常见方案。 [p246]" ID="Q656" />
        <node TEXT="Q657 雪花算法（Snowflake）生成分布式 ID 的原理是什么？有什么优缺点？ [p247]" ID="Q657" />
      </node>
      <node TEXT="Redis/ZooKeeper 分布式锁 · 核心（9题）" ID="dist-lock" FOLDED="true">
        <node TEXT="Q441 什么是分布式锁，为什么在分布式系统中需要它？ [p179]" ID="Q441" />
        <node TEXT="Q442 如何用 Redis 实现一个基本的分布式锁，核心命令是什么？ [p179]" ID="Q442" />
        <node TEXT="Q443 SETNX 加锁后设置过期时间之间崩溃会有什么问题，怎么解决？ [p180]" ID="Q443" />
        <node TEXT="Q444 分布式锁如果业务执行时间超过锁过期时间怎么办？ [p180]" ID="Q444" />
        <node TEXT="Q445 分布式锁的可重入性如何设计？ [p180]" ID="Q445" />
        <node TEXT="Q446 使用 Redis 分布式锁有哪些注意事项？ [p181]" ID="Q446" />
        <node TEXT="Q658 为什么在分布式环境下需要分布式锁？ [p247]" ID="Q658" />
        <node TEXT="Q659 基于 Redis 实现分布式锁的常见方式有哪些？需要注意什么？ [p247]" ID="Q659" />
        <node TEXT="Q660 基于 Zookeeper 如何实现分布式锁？它相比 Redis 方案有什么特点？ [p248]" ID="Q660" />
      </node>
    </node>
    <node TEXT="网络与流量入口（90题）" ID="network" POSITION="left" FOLDED="true">
      <node TEXT="分层模型与 TCP/UDP · 核心（7题）" ID="network-model" FOLDED="true">
        <node TEXT="Q526 请简述 OSI 七层网络模型，并说明每一层的主要作用。 [p204]" ID="Q526" />
        <node TEXT="Q527 TCP/IP 四层模型由哪几层组成，与 OSI 七层如何对应？ [p205]" ID="Q527" />
        <node TEXT="Q528 TCP 和 UDP 的核心区别是什么？分别适用于什么场景？ [p205]" ID="Q528" />
        <node TEXT="Q529 请说明 TCP 报文段首部有哪些关键字段，各自有什么作用？ [p205]" ID="Q529" />
        <node TEXT="Q530 TCP 是如何保证可靠传输的？请说明其可靠性机制。 [p205]" ID="Q530" />
        <node TEXT="Q531 既然 TCP 可靠，为什么视频通话、游戏等场景仍常用 UDP？ [p206]" ID="Q531" />
        <node TEXT="Q575 为什么网络层（IP）不保证可靠，而传输层 TCP 却能做到可靠？ [p218]" ID="Q575" />
      </node>
      <node TEXT="TCP 连接、状态与流控 · 核心（10题）" ID="tcp" FOLDED="true">
        <node TEXT="Q532 什么是 TCP 的三次握手？请描述完整过程。 [p206]" ID="Q532" />
        <node TEXT="Q533 为什么 TCP 建立连接需要三次握手，而不是两次？ [p206]" ID="Q533" />
        <node TEXT="Q534 什么是 TCP 的四次挥手？请描述完整过程。 [p207]" ID="Q534" />
        <node TEXT="Q535 为什么 TCP 断开连接需要四次挥手，而不是三次？ [p207]" ID="Q535" />
        <node TEXT="Q536 为什么 TCP 主动关闭方在 TIME-WAIT 状态要等待 2MSL 才进入 CLOSE？ [p207]" ID="Q536" />
        <node TEXT="Q537 服务器出现大量 CLOSE-WAIT 状态通常意味着什么问题？ [p207]" ID="Q537" />
        <node TEXT="Q538 什么是 TCP 的半关闭（half-close）？它在实际中有什么意义？ [p208]" ID="Q538" />
        <node TEXT="Q539 什么是 SYN 洪水攻击？它与 TCP 半连接队列有什么关系？ [p208]" ID="Q539" />
        <node TEXT="Q540 请说明 TCP 首部中六个控制标志位 SYN、ACK、FIN、RST、PSH、URG 各自的含 义。 [p208]" ID="Q540" />
        <node TEXT="Q572 什么是 TCP 的流量控制？它和拥塞控制有什么区别？ [p217]" ID="Q572" />
      </node>
      <node TEXT="HTTP、状态码与 REST · 核心（12题）" ID="http" FOLDED="true">
        <node TEXT="Q541 HTTP 协议的核心特点是什么？如何理解它的“无状态”？ [p208]" ID="Q541" />
        <node TEXT="Q542 请描述浏览器输入一个 URL 到页面返回，HTTP 完整的传输流程是怎样的？ [p209]" ID="Q542" />
        <node TEXT="Q543 HTTP 中的长连接和短连接分别指什么？HTTP/1.0 与 1.1 在连接管理上有何不同？ [p209]" ID="Q543" />
        <node TEXT="Q544 HTTP/1.1、HTTP/2.0、HTTP/3.0 各自在性能上做了哪些关键演进？ [p209]" ID="Q544" />
        <node TEXT="Q545 HTTP 常见的请求方法有哪些？GET 和 POST 的主要区别是什么？ [p209]" ID="Q545" />
        <node TEXT="Q546 请按类别说明 HTTP 状态码的含义。 [p210]" ID="Q546" />
        <node TEXT="Q547 200、201、204 这几个 2xx 状态码分别在什么场景下使用？ [p210]" ID="Q547" />
        <node TEXT="Q548 301 和 302 重定向有什么区别？分别适用于什么场景？ [p210]" ID="Q548" />
        <node TEXT="Q549 304 Not Modified 是如何配合缓存机制工作的？ [p211]" ID="Q549" />
        <node TEXT="Q550 400、401、403、404 这几个客户端错误状态码如何区分？ [p211]" ID="Q550" />
        <node TEXT="Q551 500、502、503、504 这几个服务端错误状态码有什么区别？ [p211]" ID="Q551" />
        <node TEXT="Q566 什么是 RESTful？设计 RESTful 风格的接口应遵循哪些原则？ [p215]" ID="Q566" />
      </node>
      <node TEXT="HTTPS、TLS 与安全基础 · 核心（11题）" ID="tls" FOLDED="true">
        <node TEXT="Q552 HTTP 和 HTTPS 有什么区别？HTTPS 的安全基础是什么？ [p211]" ID="Q552" />
        <node TEXT="Q553 请说明 HTTPS 的完整工作原理与通信过程。 [p212]" ID="Q553" />
        <node TEXT="Q554 请详细描述 HTTPS 的握手（TLS 握手）过程中证书验证与密钥交换步骤。 [p212]" ID="Q554" />
        <node TEXT="Q555 对称加密和非对称加密各有什么特点？二者如何结合使用？ [p212]" ID="Q555" />
        <node TEXT="Q556 什么是 AES 加密？它在工程实践中有哪些典型应用？ [p213]" ID="Q556" />
        <node TEXT="Q557 什么是 RSA 加密？它基于什么数学难题？ [p213]" ID="Q557" />
        <node TEXT="Q558 为什么 HTTPS 不全程使用非对称加密，而要采用“非对称加密交换密钥 + 对称加 密传输数据”？ [p213]" ID="Q558" />
        <node TEXT="Q559 数字证书和 CA 在 HTTPS 中起到什么作用？ [p213]" ID="Q559" />
        <node TEXT="Q560 MD5 算法的常见用途有哪些？现在还适合用于密码存储吗？ [p214]" ID="Q560" />
        <node TEXT="Q561 什么是 CRC 校验？它在网络与文件传输中有什么作用？ [p214]" ID="Q561" />
        <node TEXT="Q574 客户端如何验证服务器返回的 HTTPS 证书是合法可信的？请展开说明。 [p218]" ID="Q574" />
      </node>
      <node TEXT="Cookie、Session 与共享状态 · 核心（3题）" ID="session" FOLDED="true">
        <node TEXT="Q562 Cookie 和 Session 有什么区别？在 HTTP 无状态前提下它们各自解决什么问题？ [p214]" ID="Q562" />
        <node TEXT="Q563 在分布式/集群环境下，Session 共享会遇到什么问题？有哪些解决方案？ [p215]" ID="Q563" />
        <node TEXT="Q573 Session 在 Web 容器中（如 Spring）通常有哪几种作用域？global Session 是什 么？ [p218]" ID="Q573" />
      </node>
      <node TEXT="DNS、CDN 与负载均衡层次 · 进阶（6题）" ID="dns-cdn" FOLDED="true">
        <node TEXT="Q564 DNS 的作用是什么？请描述一次完整的域名解析过程。 [p215]" ID="Q564" />
        <node TEXT="Q565 什么是 DNS 负载均衡（Flash DNS）？它适用于什么场景？ [p215]" ID="Q565" />
        <node TEXT="Q567 请说明 CDN 的基本原理与核心组成系统。 [p216]" ID="Q567" />
        <node TEXT="Q568 CDN 中的 GSLB 和 SLB 分别负责什么？二者如何配合？ [p216]" ID="Q568" />
        <node TEXT="Q569 四层负载均衡和七层负载均衡有什么区别？各自有哪些典型实现？ [p216]" ID="Q569" />
        <node TEXT="Q570 常见的负载均衡算法/策略有哪些？各自适用什么场景？ [p217]" ID="Q570" />
      </node>
      <node TEXT="网络故障排查 · 核心（1题）" ID="network-diagnostics" FOLDED="true">
        <node TEXT="Q571 当用户反馈“网站打不开”时，作为后端/运维你会按怎样的思路做网络故障排查？ [p217]" ID="Q571" />
      </node>
      <node TEXT="Nginx 架构与事件模型 · 进阶（6题）" ID="nginx-model" FOLDED="true">
        <node TEXT="Q576 请简述 Nginx 的核心功能与主要应用场景。 [p218]" ID="Q576" />
        <node TEXT="Q577 Nginx 采用 Master+Worker 进程模型，请说明各进程职责及该模型优势。 [p219]" ID="Q577" />
        <node TEXT="Q578 请解释什么是 C10K 问题，Nginx 是如何解决高并发连接瓶颈的。 [p219]" ID="Q578" />
        <node TEXT="Q579 请说明 Nginx 处理一个 HTTP 请求的完整生命周期。 [p219]" ID="Q579" />
        <node TEXT="Q608 请对比 Nginx 与 Apache 的架构差异及性能特点。 [p230]" ID="Q608" />
        <node TEXT="Q609 请说明 Nginx 事件驱动模型及 epoll 在高并发中的作用。 [p230]" ID="Q609" />
      </node>
      <node TEXT="Nginx 代理与 upstream · 核心（7题）" ID="nginx-proxy" FOLDED="true">
        <node TEXT="Q580 什么是反向代理？Nginx 作为反向代理相比其他方案有何优势？ [p220]" ID="Q580" />
        <node TEXT="Q581 什么是正向代理？它与反向代理的核心区别是什么？ [p220]" ID="Q581" />
        <node TEXT="Q582 Nginx 负载均衡支持哪些调度策略？请分别说明轮询、加权轮询、ip_hash、 least_conn。 [p220]" ID="Q582" />
        <node TEXT="Q583 请说明 ngx_http_upstream_module 模块的作用及常用配置指令。 [p221]" ID="Q583" />
        <node TEXT="Q584 如何在 Nginx 负载均衡中实现会话保持（Session Sticky）？ [p221]" ID="Q584" />
        <node TEXT="Q585 反向代理负载均衡与 DNS、HTTP 重定向负载均衡相比各有什么优缺点？ [p221]" ID="Q585" />
        <node TEXT="Q610 如何配置 Nginx 的 upstream 健康检查以屏蔽故障后端？ [p230]" ID="Q610" />
      </node>
      <node TEXT="Nginx 路由与配置 · 进阶（9题）" ID="nginx-config" FOLDED="true">
        <node TEXT="Q586 请详细说明 Nginx 的 location 匹配规则及优先级顺序。 [p222]" ID="Q586" />
        <node TEXT="Q587 Nginx 配置文件整体结构是怎样的？主要配置块有哪些层级？ [p222]" ID="Q587" />
        <node TEXT="Q588 worker_processes 与 worker_connections 应如何配置以发挥最佳性能？ [p222]" ID="Q588" />
        <node TEXT="Q589 Nginx 中 proxy_pass 后是否带 URI（斜杠）对转发路径有何影响？这是常见陷阱。 [p223]" ID="Q589" />
        <node TEXT="Q590 请说明 try_files 指令的作用与典型应用场景。 [p223]" ID="Q590" />
        <node TEXT="Q591 如何在 Nginx 中配置访问日志与错误日志，并按条件记录？ [p224]" ID="Q591" />
        <node TEXT="Q592 请说明 merge_slashes 指令的作用及使用场景。 [p224]" ID="Q592" />
        <node TEXT="Q601 请说明 rewrite 指令的语法、flag 及典型应用场景。 [p227]" ID="Q601" />
        <node TEXT="Q602 如何配置 Nginx 实现 URL 的 301 永久重定向与 302 临时重定向？ [p227]" ID="Q602" />
      </node>
      <node TEXT="Nginx Web 能力 · 进阶（8题）" ID="nginx-web" FOLDED="true">
        <node TEXT="Q593 什么是动静分离？在 Nginx 中应如何实现？ [p224]" ID="Q593" />
        <node TEXT="Q594 请说明如何配置 Nginx 实现 HTTPS（SSL/TLS 终止）。 [p225]" ID="Q594" />
        <node TEXT="Q595 请说明 stub_status 与 sub_filter 两个模块分别的作用。 [p225]" ID="Q595" />
        <node TEXT="Q596 如何通过 Nginx 配置缓存（proxy_cache）来提升后端性能？ [p225]" ID="Q596" />
        <node TEXT="Q597 Nginx 如何配置 gzip 压缩以减少传输体积、提升响应速度？ [p226]" ID="Q597" />
        <node TEXT="Q598 什么是 SSI？Nginx 如何向页面注入动态时间等变量？ [p226]" ID="Q598" />
        <node TEXT="Q603 如何在 Nginx 中配置跨域（CORS）以允许前端调用 API？ [p228]" ID="Q603" />
        <node TEXT="Q607 如何通过 Nginx 反向代理 WebSocket 长连接？需要注意哪些配置？ [p229]" ID="Q607" />
      </node>
      <node TEXT="Nginx 高可用、限流与排障 · 进阶（10题）" ID="nginx-ops" FOLDED="true">
        <node TEXT="Q599 如何通过 Nginx 实现请求限流（rate limiting）以保护后端？ [p226]" ID="Q599" />
        <node TEXT="Q600 常见的限流算法有哪些？漏桶算法与令牌桶算法有何区别？ [p227]" ID="Q600" />
        <node TEXT="Q604 Nginx 如何实现高可用？请结合 keepalived 说明双机热备方案。 [p228]" ID="Q604" />
        <node TEXT="Q605 什么是 Nginx 平滑重启（热部署）？其原理与常用命令是什么？ [p229]" ID="Q605" />
        <node TEXT="Q606 请说明 nginx -s 可发送哪些信号及其作用。 [p229]" ID="Q606" />
        <node TEXT="Q611 线上 Nginx 返回 502 和 503，应如何区分并排查根因？ [p231]" ID="Q611" />
        <node TEXT="Q612 客户端访问 Nginx 出现 404，请列出系统化的排查步骤。 [p231]" ID="Q612" />
        <node TEXT="Q613 Nginx 配置修改后不生效，常见原因有哪些？如何诊断？ [p231]" ID="Q613" />
        <node TEXT="Q614 生产环境 Nginx 性能调优有哪些关键点？请综合说明。 [p232]" ID="Q614" />
        <node TEXT="Q615 如果 Nginx 作为入口层，如何设计既安全又高性能的多层架构？ [p232]" ID="Q615" />
      </node>
    </node>
    <node TEXT="AI 应用、Agent 与模型（135题）" ID="ai" POSITION="right" FOLDED="true">
      <node TEXT="Spring AI 接入与框架选型 · 核心（8题）" ID="spring-ai" FOLDED="true">
        <node TEXT="Q666 请一句话说明 Spring AI 在 Java 生态中的定位和它主要解决了什么问题？ [p250]" ID="Q666" />
        <node TEXT="Q667 在 Spring AI 中，ChatClient 的作用是什么？请描述一次典型调用的链式 API 流 程。 [p250]" ID="Q667" />
        <node TEXT="Q668 Spring AI 的 ChatModel 与 ChatClient 是什么关系？为什么要做这一层抽象？ [p251]" ID="Q668" />
        <node TEXT="Q669 简述 Spring AI 中 Prompt、Message 与 ChatClient 的使用边界，系统/用户/助手 消息各自承担什么职责？ [p251]" ID="Q669" />
        <node TEXT="Q670 什么是 Spring AI 的 Advisor（顾问）机制？它和拦截器有什么相似之处？ [p252]" ID="Q670" />
        <node TEXT="Q671 Spring AI 1.0 中 Function Calling 的声明方式相比早期版本有什么关键演进？ [p252]" ID="Q671" />
        <node TEXT="Q672 在 Spring Boot 项目中接入 Spring AI，最核心的几项 Maven/配置依赖与属性是 什么？ [p253]" ID="Q672" />
        <node TEXT="Q740 团队做技术选型：Spring AI 还是 LangChain4j？请给出决策框架。 [p283]" ID="Q740" />
      </node>
      <node TEXT="提示词、角色与版本管理 · 核心（6题）" ID="prompts" FOLDED="true">
        <node TEXT="Q673 什么是 PromptTemplate？在 Java 中如何避免硬编码提示词并支持动态参数？ [p253]" ID="Q673" />
        <node TEXT="Q674 简述 Prompt 模板与消息角色配合的最佳实践，为什么不要把所有指令都写进 user 消息？ [p253]" ID="Q674" />
        <node TEXT="Q675 在 Java 中如何做提示词的版本管理与灰度？请结合 Spring 配置给出思路。 [p254]" ID="Q675" />
        <node TEXT="Q676 提示词工程中&quot;少样本（Few-shot）&quot;在 Spring AI 中如何封装？举例说明适用场 景。 [p254]" ID="Q676" />
        <node TEXT="Q753 什么是 Prompt Engineering？在实际业务中设计提示词有哪些核心技巧？ [p287]" ID="Q753" />
        <node TEXT="Q754 什么是 Zero-shot、Few-shot 与 Chain-of-Thought 提示？分别适用什么场景？ [p287]" ID="Q754" />
      </node>
      <node TEXT="会话记忆、长期记忆与上下文 · 核心（8题）" ID="ai-memory" FOLDED="true">
        <node TEXT="Q677 请说明 Spring AI 中 ChatMemory 的设计目标与典型实现类有哪些？ [p255]" ID="Q677" />
        <node TEXT="Q678 在分布式或集群部署下，为什么不能用普通的 InMemoryChatMemory？企业级替 代方案是什么？ [p255]" ID="Q678" />
        <node TEXT="Q679 对话记忆的容量管理（窗口/Token 裁剪）为什么重要？给出 Java 侧的实现思路。 [p256]" ID="Q679" />
        <node TEXT="Q680 简述 ChatMemory 与 RAG 检索在&quot;记忆&quot;职责上的区别，为什么二者不可互相替 代？ [p256]" ID="Q680" />
        <node TEXT="Q681 在多租户 SaaS 场景下，ChatMemory 应该如何做数据隔离？ [p256]" ID="Q681" />
        <node TEXT="Q693 LangChain4j 的 ChatMemory 有哪些实现？MessageWindowChatMemory 与 TokenWindowChatMemory 有何区别？ [p262]" ID="Q693" />
        <node TEXT="Q733 如何为 Agent 设计&quot;长期记忆（Long-term Memory）&quot;以应对跨会话的知识沉淀？ [p280]" ID="Q733" />
        <node TEXT="Q758 什么是 Token？大模型上下文窗口（Context Window）受限会带来哪些问题？ [p288]" ID="Q758" />
      </node>
      <node TEXT="工具调用与结构化参数 · 核心（9题）" ID="tool-use" FOLDED="true">
        <node TEXT="Q682 什么是 Function Calling（函数调用/工具调用）？它在 AI Agent 中解决什么核心 问题？ [p257]" ID="Q682" />
        <node TEXT="Q683 在 Spring AI 中，如何把一个已有的 Java 业务方法暴露为 Agent 可调用的工具？ [p257]" ID="Q683" />
        <node TEXT="Q684 工具调用的参数 JSON Schema 是如何生成的？描述写得不好会引发哪些问题？ [p258]" ID="Q684" />
        <node TEXT="Q685 工具（Function）执行出现超时或异常时，Java 侧应如何处理以保证 Agent 不崩 溃？ [p258]" ID="Q685" />
        <node TEXT="Q686 请对比&quot;单次工具调用&quot;与&quot;多轮工具调用（Agent 循环）&quot;在 Spring AI 中的差异。 [p259]" ID="Q686" />
        <node TEXT="Q695 在 LangChain4j 中，@Tool 注解方法的返回值与异常处理有什么最佳实践？ [p263]" ID="Q695" />
        <node TEXT="Q734 在 Java 中如何处理大模型响应里&quot;直接回答&quot;与&quot;函数调用&quot;混合的情况？ [p280]" ID="Q734" />
        <node TEXT="Q769 Agent 的工具调用（Function Calling / Tool Use）是如何实现的？落地要注意什 么？ [p292]" ID="Q769" />
        <node TEXT="Q799 请说明 Function Calling 与 ReAct 两种 Agent 实现路线的关系与差异。 [p300]" ID="Q799" />
      </node>
      <node TEXT="MCP 工具协议 · 进阶（4题）" ID="mcp" FOLDED="true">
        <node TEXT="Q687 什么是 MCP（Model Context Protocol）？它和传统的 Function Calling 有何本 质区别？ [p259]" ID="Q687" />
        <node TEXT="Q688 Spring AI 如何同时作为 MCP Client 和 MCP Server？请分别说明接入方式。 [p259]" ID="Q688" />
        <node TEXT="Q689 MCP 的传输层（stdio 与 SSE/HTTP）分别适用于什么场景？各有什么优劣？ [p260]" ID="Q689" />
        <node TEXT="Q690 在企业中，为什么用 MCP 替代&quot;每个 Agent 各自硬编码集成内部系统&quot;的写法？ [p260]" ID="Q690" />
      </node>
      <node TEXT="LangChain4j 接口与检索组件 · 进阶（5题）" ID="langchain4j" FOLDED="true">
        <node TEXT="Q691 LangChain4j 的核心设计哲学是什么？它和 Spring AI 的主要差异在哪里？ [p261]" ID="Q691" />
        <node TEXT="Q692 在 LangChain4j 中，AiServices 是什么？它如何把一个接口变成可用的 Agent？ [p261]" ID="Q692" />
        <node TEXT="Q694 请说明 LangChain4j 中 Document、DocumentSplitter 与 EmbeddingStore 在 RAG 中的协作关系。 [p262]" ID="Q694" />
        <node TEXT="Q696 LangChain4j 的 Chain 与 Agent 有什么区别？分别适合什么场景？ [p263]" ID="Q696" />
        <node TEXT="Q697 LangChain4j 的 Retriever 有哪几种常见类型？ContentRetriever 与 EmbeddingStoreContentRetriever 的关系是什么？ [p263]" ID="Q697" />
      </node>
      <node TEXT="RAG 全链路与质量优化 · 核心（12题）" ID="rag" FOLDED="true">
        <node TEXT="Q698 请完整描述一次 RAG（检索增强生成）从知识入库到问答的工程流程。 [p264]" ID="Q698" />
        <node TEXT="Q699 RAG 中&quot;文档切分（Chunking）&quot;的策略有哪些？切分不当会造成什么后果？ [p264]" ID="Q699" />
        <node TEXT="Q700 什么是检索重排（Rerank）？为什么在基础向量检索之后通常还需要它？ [p265]" ID="Q700" />
        <node TEXT="Q701 RAG 系统上线后回答不准确，常见的排查路径（故障排查）是什么？ [p265]" ID="Q701" />
        <node TEXT="Q729 RAG 中&quot;查询改写（Query Rewrite）与多轮指代消解&quot;有什么作用？如何在 Java 中 实现？ [p278]" ID="Q729" />
        <node TEXT="Q730 为什么混合检索（向量+关键词）通常优于纯向量检索？在 Java 中如何落地？ [p278]" ID="Q730" />
        <node TEXT="Q738 什么是大模型&quot;幻觉（Hallucination）&quot;？RAG 与引用溯源如何缓解它？ [p282]" ID="Q738" />
        <node TEXT="Q739 知识库内容更新后，如何对向量索引做增量重建而非全量重算？ [p282]" ID="Q739" />
        <node TEXT="Q763 请描述一个完整的 RAG（检索增强生成）系统架构与关键模块。 [p290]" ID="Q763" />
        <node TEXT="Q764 RAG 与微调（Fine-tuning）应如何取舍？各自适合解决什么问题？ [p290]" ID="Q764" />
        <node TEXT="Q765 RAG 中常见的文档切片（Chunking）策略有哪些？如何避免语义割裂？ [p290]" ID="Q765" />
        <node TEXT="Q800 在 RAG 系统中，检索召回质量不佳时应从哪些环节排查与优化？ [p301]" ID="Q800" />
      </node>
      <node TEXT="Embedding、向量库与索引 · 核心（12题）" ID="embeddings" FOLDED="true">
        <node TEXT="Q702 什么是向量数据库？在 RAG 场景下它和传统关系型数据库的职责有何不同？ [p266]" ID="Q702" />
        <node TEXT="Q703 请对比 pgvector、Milvus、Redis 三种向量存储在 Java 企业项目中的选型要点。 [p266]" ID="Q703" />
        <node TEXT="Q704 在向量检索中，相似度度量（余弦/欧氏/点积）该如何选择？它与嵌入模型有何关 系？ [p266]" ID="Q704" />
        <node TEXT="Q705 向量数据库中的元数据过滤（metadata filtering）在 RAG 中有什么实际作用？ [p267]" ID="Q705" />
        <node TEXT="Q706 请简述 Embedding（嵌入）模型的作用，以及为何&quot;检索与入库必须用同一个嵌入 模型&quot;。 [p267]" ID="Q706" />
        <node TEXT="Q707 国内外常见的 Embedding 模型有哪些？在选择时我们应关注哪些指标？ [p268]" ID="Q707" />
        <node TEXT="Q731 嵌入模型维度选择与向量库索引类型（HNSW/IVF）对检索性能有何影响？ [p279]" ID="Q731" />
        <node TEXT="Q755 请说明 Embedding 向量在大模型与检索系统中的意义及生成方式。 [p287]" ID="Q755" />
        <node TEXT="Q756 向量检索（ANN）在大模型应用中的常见算法有哪些？如何选型？ [p288]" ID="Q756" />
        <node TEXT="Q757 向量相似度常用的度量方式有哪些？各有什么适用特点？ [p288]" ID="Q757" />
        <node TEXT="Q788 企业落地 RAG 时，向量数据库选型应关注哪些维度？请对比几类方案。 [p297]" ID="Q788" />
        <node TEXT="Q796 什么是编码器输出的句向量？如何用 BERT 类模型得到高质量句子表征？ [p299]" ID="Q796" />
      </node>
      <node TEXT="Agent 规划与执行循环 · 核心（8题）" ID="agent-loop" FOLDED="true">
        <node TEXT="Q708 什么是 ReAct（Reasoning + Acting）范式？它在 Java Agent 中如何落地为&quot;思 考-行动-观察&quot;循环？ [p268]" ID="Q708" />
        <node TEXT="Q709 Agent 在执行多步任务时出现&quot;循环调用同一失败工具&quot;或&quot;步数爆炸&quot;，应如何设 防？ [p269]" ID="Q709" />
        <node TEXT="Q710 请解释 Agent 的&quot;规划（Planning）&quot;与&quot;推理（Reasoning）&quot;在落地时的区别与联 系。 [p269]" ID="Q710" />
        <node TEXT="Q711 如何让 Agent 具备&quot;自我反思（Reflection）&quot;能力以减少错误？举个 Java 侧实现思 路。 [p270]" ID="Q711" />
        <node TEXT="Q732 什么是多 Agent 协作（Multi-Agent）？在企业复杂任务中应如何编排？ [p279]" ID="Q732" />
        <node TEXT="Q766 什么是 AI Agent（智能体）？它与普通对话大模型的核心区别是什么？ [p291]" ID="Q766" />
        <node TEXT="Q767 请解释 ReAct 框架的原理及其在 Agent 中的应用方式。 [p291]" ID="Q767" />
        <node TEXT="Q768 Plan-and-Execute 与 ReAct 两种 Agent 规划范式有何区别？各自适用场景？ [p291]" ID="Q768" />
      </node>
      <node TEXT="多模态与 CLIP · 选读（4题）" ID="multimodal" FOLDED="true">
        <node TEXT="Q712 什么是多模态（Multimodal）大模型？在 Spring AI / LangChain4j 中如何向模型 传入图片等输入？ [p270]" ID="Q712" />
        <node TEXT="Q713 在多模态 Agent 场景中，图片输入可能带来哪些额外的安全与成本风险？如何防 范？ [p270]" ID="Q713" />
        <node TEXT="Q770 什么是多模态大模型？请说明其主流融合架构与典型代表。 [p292]" ID="Q770" />
        <node TEXT="Q771 请说明 CLIP 的工作原理及其在多模态系统中的典型用途。 [p292]" ID="Q771" />
      </node>
      <node TEXT="流式响应与结构化输出 · 进阶（5题）" ID="streaming" FOLDED="true">
        <node TEXT="Q714 什么是流式响应（Streaming）？在 Spring AI 中如何用 Flux 实现打字机式输出？ [p271]" ID="Q714" />
        <node TEXT="Q715 在 Spring WebFlux / SSE 场景下对接 LLM 流式输出，Java 侧需要注意哪些线程与 背压问题？ [p271]" ID="Q715" />
        <node TEXT="Q727 在 LangChain4j 中，如何让模型返回可校验的 Java 对象（结构化输出）？ [p277]" ID="Q727" />
        <node TEXT="Q728 Spring AI 中如何把模型回复解析为 POJO？请说明 BeanOutputConverter 的用 法。 [p277]" ID="Q728" />
        <node TEXT="Q735 流式（SSE）场景下如何实现结构化输出解析？增量 JSON 拼接有哪些难点？ [p281]" ID="Q735" />
      </node>
      <node TEXT="模型接入、可观测性与成本 · 核心（13题）" ID="ai-engineering" FOLDED="true">
        <node TEXT="Q716 为什么 AI Agent 系统需要可观测性（Observability）？Spring AI 如何与 Micrometer 集成？ [p272]" ID="Q716" />
        <node TEXT="Q717 如何通过链路追踪定位一次 Agent 调用中&quot;慢在模型还是慢在工具/RAG&quot;？ [p272]" ID="Q717" />
        <node TEXT="Q718 在 Java 中对接 OpenAI 与国产大模型（通义/文心/智谱）时，主要差异和兼容性写 法是什么？ [p273]" ID="Q718" />
        <node TEXT="Q719 接入多个大模型供应商时，如何设计一个&quot;可切换、可降级&quot;的模型路由层？ [p273]" ID="Q719" />
        <node TEXT="Q720 私有化/本地大模型（如 Ollama、vLLM）在企业 Agent 中如何接入？适用什么场 景？ [p274]" ID="Q720" />
        <node TEXT="Q721 请描述一个企业级 Java AI Agent 的整体分层架构（从接入层到数据层）。 [p274]" ID="Q721" />
        <node TEXT="Q725 如何对 Agent 做限流、配额与成本控制，防止被滥用或账单爆炸？ [p276]" ID="Q725" />
        <node TEXT="Q737 通义/文心/智谱在工具调用与多模态支持上有哪些差异？接入时要注意什么？ [p281]" ID="Q737" />
        <node TEXT="Q774 请对比 GPT 系列、Claude、通义千问、文心一言、GLM 等主流大模型的特点。 [p293]" ID="Q774" />
        <node TEXT="Q775 GPT-4 相比 GPT-3.5 在工程与能力上有哪些关键改进？ [p293]" ID="Q775" />
        <node TEXT="Q776 国内主流大模型（通义千问、文心、GLM）在私有化部署方面有哪些优势？ [p294]" ID="Q776" />
        <node TEXT="Q777 AI 应用从原型到生产落地通常经历哪些阶段？工程化关键点是什么？ [p294]" ID="Q777" />
        <node TEXT="Q795 请描述一个 AI 应用从 0 到 1 落地的典型流程与风险点。 [p299]" ID="Q795" />
      </node>
      <node TEXT="提示注入、权限与幻觉 · 核心（6题）" ID="ai-safety" FOLDED="true">
        <node TEXT="Q723 什么是提示词注入（Prompt Injection）攻击？在 Java Agent 中应怎样防御？ [p275]" ID="Q723" />
        <node TEXT="Q724 Agent 调用写操作（如改数据库、发通知）时，如何做权限控制与操作审计？ [p275]" ID="Q724" />
        <node TEXT="Q726 什么是 Guardrails（护栏）？在 Spring AI 中如何设计内容安全护栏？ [p276]" ID="Q726" />
        <node TEXT="Q778 什么是大模型幻觉（Hallucination）？常见的产生原因有哪些？ [p294]" ID="Q778" />
        <node TEXT="Q779 有哪些行之有效的缓解大模型幻觉的工程手段？ [p295]" ID="Q779" />
        <node TEXT="Q791 什么是 Prompt Injection（提示注入）攻击？在 Agent/RAG 系统中如何防护？ [p298]" ID="Q791" />
      </node>
      <node TEXT="Transformer 与模型结构 · 选读（10题）" ID="transformer" FOLDED="true">
        <node TEXT="Q741 请简要说明 Self-Attention 自注意力机制的核心计算过程及其作用。 [p283]" ID="Q741" />
        <node TEXT="Q742 多头注意力 Multi-Head Attention 相比单头注意力有什么优势？请阐述原理。 [p284]" ID="Q742" />
        <node TEXT="Q743 Transformer 中位置编码的作用是什么？绝对位置编码与相对位置编码有何区别？ [p284]" ID="Q743" />
        <node TEXT="Q744 请解释旋转位置编码 RoPE 的直观原理及其在大模型中的应用价值。 [p284]" ID="Q744" />
        <node TEXT="Q745 请对比 Encoder-Only、Decoder-Only 与 Encoder-Decoder 三类架构的适用场 景。 [p285]" ID="Q745" />
        <node TEXT="Q746 Encoder-Decoder 架构中的交叉注意力 Cross-Attention 是如何工作的？ [p285]" ID="Q746" />
        <node TEXT="Q780 自注意力机制的时间与空间复杂度是多少？长序列下有哪些优化思路？ [p295]" ID="Q780" />
        <node TEXT="Q781 Transformer 中的残差连接与 Layer Normalization 起什么作用？Pre-LN 与 Post- LN 有何差异？ [p295]" ID="Q781" />
        <node TEXT="Q785 什么是 MoE（混合专家）架构？它为什么能降低大模型推理成本？ [p296]" ID="Q785" />
        <node TEXT="Q789 模型如何扩展上下文窗口（Context Extension）？位置插值（PI）与 NTK 是什 么？ [p297]" ID="Q789" />
      </node>
      <node TEXT="预训练、微调与偏好对齐 · 选读（11题）" ID="training" FOLDED="true">
        <node TEXT="Q747 大模型的预训练（Pre-training）阶段主要学习什么？常用训练目标有哪些？ [p285]" ID="Q747" />
        <node TEXT="Q748 什么是 SFT（监督微调）？它在大模型训练流程中处于什么位置？ [p285]" ID="Q748" />
        <node TEXT="Q749 请阐述 RLHF（基于人类反馈的强化学习）的完整流程及其解决的问题。 [p286]" ID="Q749" />
        <node TEXT="Q750 什么是 LoRA？它为什么能在大幅降低微调成本的同时保持效果？ [p286]" ID="Q750" />
        <node TEXT="Q751 请解释 P-tuning 与 Prefix-tuning 的原理，它们与 LoRA 有何区别？ [p286]" ID="Q751" />
        <node TEXT="Q752 什么是 QLoRA？它如何在单张消费级显卡上微调大模型？ [p287]" ID="Q752" />
        <node TEXT="Q783 大模型分布式训练的三种并行策略（数据/张量/流水线）分别是什么？ [p296]" ID="Q783" />
        <node TEXT="Q786 什么是 DPO（直接偏好优化）？相比传统 RLHF 它简化了什么？ [p297]" ID="Q786" />
        <node TEXT="Q793 构建高质量 SFT 微调数据集有哪些原则与常见误区？ [p299]" ID="Q793" />
        <node TEXT="Q797 大模型训练中的 Loss Spike（损失尖峰）是什么？如何排查与缓解？ [p300]" ID="Q797" />
        <node TEXT="Q798 什么是灾难性遗忘（Catastrophic Forgetting）？微调时如何缓解？ [p300]" ID="Q798" />
      </node>
      <node TEXT="推理、量化与部署加速 · 选读（9题）" ID="inference" FOLDED="true">
        <node TEXT="Q759 模型推理阶段的量化（Quantization）有哪些常见方案？各有什么权衡？ [p289]" ID="Q759" />
        <node TEXT="Q760 什么是模型蒸馏？知识蒸馏与大模型压缩有什么关系？ [p289]" ID="Q760" />
        <node TEXT="Q761 请介绍 vLLM 及其核心机制 PagedAttention，它解决了什么部署痛点？ [p289]" ID="Q761" />
        <node TEXT="Q762 什么是 KV Cache？为什么它对自回归生成至关重要？ [p290]" ID="Q762" />
        <node TEXT="Q782 解码阶段的温度（Temperature）、Top-k、Top-p 采样分别控制什么？如何调？ [p295]" ID="Q782" />
        <node TEXT="Q784 请介绍 FlashAttention 的原理与它对训练/推理性能的提升。 [p296]" ID="Q784" />
        <node TEXT="Q790 推理加速中的投机解码（Speculative Decoding）原理是什么？ [p298]" ID="Q790" />
        <node TEXT="Q792 大模型压缩技术整体有哪些？各自的适用目标是什么？ [p298]" ID="Q792" />
        <node TEXT="Q794 请对比主流推理/部署框架 vLLM、TGI、llama.cpp 的适用场景。 [p299]" ID="Q794" />
      </node>
      <node TEXT="Agent 与模型效果评估 · 核心（5题）" ID="ai-evals" FOLDED="true">
        <node TEXT="Q722 在企业落地 Agent 时，如何做&quot;效果评估（Evaluation）&quot;以避免上线即翻车？ [p275]" ID="Q722" />
        <node TEXT="Q736 如何对 Agent 的工具、Prompt、RAG 做单元测试，保证可测试性？ [p281]" ID="Q736" />
        <node TEXT="Q772 困惑度（Perplexity, PPL）是什么？用它评估语言模型有哪些局限性？ [p293]" ID="Q772" />
        <node TEXT="Q773 大模型的自动评估常用哪些指标与基准？人工评估一般关注什么？ [p293]" ID="Q773" />
        <node TEXT="Q787 主流 LLM 评测基准 MMLU、GSM8K、HumanEval 分别考察什么能力？ [p297]" ID="Q787" />
      </node>
    </node>
  </node>
</map>