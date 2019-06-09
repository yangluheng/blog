package com.datou.tool;

import java.util.HashSet;
import java.util.Set;

public class SetUtil<T> {
    private Set<T> differentSet;
    private Set<T> sameSet;
    private Set<T> unionSet;

    /*
     * union方法计算并集
     * */
    public Set<T> Union(Set<T> s1, Set<T> s2) {
        unionSet = new HashSet<T>();
        for (T s : s1) {
            unionSet.add(s);
        }
        for (T s : s2) {
            unionSet.add(s);
        }
        return unionSet;
    }


    /*
     *differentSet方法返回差集
     * */
    public Set<T> differentSet(Set<T> s1, Set<T> s2) {
        differentSet = new HashSet<T>();
        for (T s : s1) {
            if (!s2.contains(s))
                differentSet.add(s);
        }
        return differentSet;
    }

    /*
     *sameSet方法返回交集
     * */
    public Set<T> sameSet(Set<T> s1, Set<T> s2) {
        sameSet = new HashSet<T>();
        for (T s : s1) {
            if (s2.contains(s))
                sameSet.add(s);
        }
        return sameSet;
    }

}
