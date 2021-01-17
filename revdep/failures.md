# lidR

<details>

* Version: 3.0.4
* GitHub: https://github.com/Jean-Romain/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2020-10-10 21:40:03 UTC
* Number of recursive dependencies: 159

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking whether package ‘lidR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c BoundingBox.cpp -o BoundingBox.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_Gatziolis2019.cpp -o C_Gatziolis2019.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_dalponte2016.cpp -o C_dalponte2016.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_delaunay.cpp -o C_delaunay.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c GridPartition.cpp -o GridPartition.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c LAS.cpp -o LAS.o
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17:0,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:27:138: note: #pragma message: CAUTION: Boost.Geometry in Boost 1.73 deprecates support for C++03 and will require C++14 from Boost 1.75 onwards.
 BOOST_PRAGMA_MESSAGE("CAUTION: Boost.Geometry in Boost 1.73 deprecates support for C++03 and will require C++14 from Boost 1.75 onwards.")
                                                                                                                                          ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:28:110: note: #pragma message: CAUTION: Define BOOST_GEOMETRY_DISABLE_DEPRECATED_03_WARNING to suppress this message.
 BOOST_PRAGMA_MESSAGE("CAUTION: Define BOOST_GEOMETRY_DISABLE_DEPRECATED_03_WARNING to suppress this message.")
                                                                                                              ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:54:25: error: expected template-name before ‘<’ token
     : std::conditional_t<Trait::value, conjunction<Traits...>, Trait>
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:54:25: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:68:25: error: expected template-name before ‘<’ token
     : std::conditional_t<Trait::value, Trait, disjunction<Traits...>>
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:68:25: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:95:23: error: ‘remove_cv_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_cv_t<std::remove_reference_t<T>>;
                       ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:105:23: error: ‘remove_const_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_const_t<std::remove_reference_t<T>>;
                       ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:115:23: error: ‘remove_const_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_const_t
                       ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:129:23: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     using type = std::conditional_t
                       ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:166:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:96:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:116:17: error: wrong number of template arguments (4, should be 2)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:73:8: note: provided for ‘template<class GeometryTag, class Geometry> struct boost::geometry::core_dispatch::ring_return_type’
 struct ring_return_type
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:108:22: error: expected nested-name-specifier
     typedef typename ring_return_type
                      ^~~~~~~~~~~~~~~~
         <
         ~             
             linestring_tag,
             ~~~~~~~~~~~~~~~
             std::conditional_t
             ~~~~~~~~~~~~~~~~~~
                 <
                 ~     
                     std::is_const<MultiLinestring>::value,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiLinestring>::type const,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiLinestring>::type
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 >
                 ~     
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:132:17: error: wrong number of template arguments (4, should be 2)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:73:8: note: provided for ‘template<class GeometryTag, class Geometry> struct boost::geometry::core_dispatch::ring_return_type’
 struct ring_return_type
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:124:22: error: expected nested-name-specifier
     typedef typename ring_return_type
                      ^~~~~~~~~~~~~~~~
         <
         ~             
             polygon_tag,
             ~~~~~~~~~~~~
             std::conditional_t
             ~~~~~~~~~~~~~~~~~~
                 <
                 ~     
                     std::is_const<MultiPolygon>::value,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiPolygon>::type const,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiPolygon>::type
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 >
                 ~     
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/coordinate_type.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_floating_point.hpp:40:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:39:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/interior_type.hpp:86:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:44:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag_cast.hpp:52:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:41:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:41:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:112:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/direction.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_calculation_type.hpp:41:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_calculation_type.hpp:61:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/no_rescale_policy.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/rescale_policy_tags.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:246:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:259:5: error: ‘fp_type’ does not name a type; did you mean ‘type’?
     fp_type m_approximation;
     ^~~~~~~
     type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:262:19: error: ‘fp_type’ does not name a type; did you mean ‘type’?
     static inline fp_type scale()
                   ^~~~~~~
                   type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In constructor ‘boost::geometry::segment_ratio<Type>::segment_ratio()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:118:11: error: class ‘boost::geometry::segment_ratio<Type>’ does not have any field named ‘m_approximation’
         , m_approximation(0)
           ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘void boost::geometry::segment_ratio<Type>::initialize()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:148:9: error: ‘m_approximation’ was not declared in this scope
         m_approximation =
         ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:148:9: note: suggested alternative: ‘__cpp_exceptions’
         m_approximation =
         ^~~~~~~~~~~~~~~
         __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:37: error: ‘fp_type’ was not declared in this scope
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                     ^~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:37: note: suggested alternative: ‘type’
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                     ^~~~~~~
                                     type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:61: error: there are no arguments to ‘scale’ that depend on a template parameter, so a declaration of ‘scale’ must be available [-fpermissive]
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:61: note: (if you use ‘-fpermissive’, G++ will accept your code, but allowing the use of an undeclared name is deprecated)
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::near_end() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:191:16: error: ‘fp_type’ does not name a type; did you mean ‘type’?
         static fp_type const small_part_of_scale = scale() / 100;
                ^~~~~~~
                type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:16: error: ‘m_approximation’ was not declared in this scope
         return m_approximation < small_part_of_scale
                ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:16: note: suggested alternative: ‘__cpp_exceptions’
         return m_approximation < small_part_of_scale
                ^~~~~~~~~~~~~~~
                __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:34: error: ‘small_part_of_scale’ was not declared in this scope
         return m_approximation < small_part_of_scale
                                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:193:34: error: there are no arguments to ‘scale’ that depend on a template parameter, so a declaration of ‘scale’ must be available [-fpermissive]
             || m_approximation > scale() - small_part_of_scale;
                                  ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::close_to(const thistype&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:198:36: error: ‘m_approximation’ was not declared in this scope
         return geometry::math::abs(m_approximation - other.m_approximation) < 50;
                                    ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:198:36: note: suggested alternative: ‘__cpp_exceptions’
         return geometry::math::abs(m_approximation - other.m_approximation) < 50;
                                    ^~~~~~~~~~~~~~~
                                    __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::operator<(const thistype&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:205:15: error: ‘m_approximation’ was not declared in this scope
             : m_approximation < other.m_approximation;
               ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:205:15: note: suggested alternative: ‘__cpp_exceptions’
             : m_approximation < other.m_approximation;
               ^~~~~~~~~~~~~~~
               __cpp_exceptions
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:20:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:35:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:47:52: error: type/value mismatch at argument 1 in template parameter list for ‘template<class Type> class boost::geometry::segment_ratio’
     typedef geometry::segment_ratio<coordinate_type> type;
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:47:52: note:   expected a type, got ‘coordinate_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:34:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:91:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:213:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:269:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:280:13: error: ‘min_bit_size_type’ was not declared in this scope
             min_bit_size_type::value,
             ^~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:280:13: note: suggested alternative: ‘bit_size_type’
             min_bit_size_type::value,
             ^~~~~~~~~~~~~~~~~
             bit_size_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:9: error: template argument 2 is invalid
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:10: error: expected identifier before ‘::’ token
         >::type type;
          ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:12: error: typedef name may not be a nested-name-specifier
         >::type type;
            ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:12: error: expected ‘;’ at end of member declaration
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:17: error: declaration does not declare anything [-fpermissive]
         >::type type;
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:70:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/point_in_poly_winding.hpp:30:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:46,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp: In static member function ‘static int boost::geometry::strategy::side::side_by_triangle<CalculationType>::apply(const P1&, const P2&, const P&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:232:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:249:13: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ... Types> struct boost::geometry::select_most_precise’
             >::type promoted_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:249:13: note:   expected a type, got ‘coordinate_type’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:260:13: error: type/value mismatch at argument 1 in template parameter list for ‘template<class CalculationType> template<class CoordinateType, class PromotedType, bool AreAllIntegralCoordinates> struct boost::geometry::strategy::side::side_by_triangle<CalculationType>::compute_side_value’
             >::apply(p1, p2, p, epsp);
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:260:13: note:   expected a type, got ‘coordinate_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:112:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:113:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:133:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:134:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:144:16: error: redefinition of ‘template<class ResultP, class P1, class P2, <typeprefixerror><anonymous> > constexpr ResultP boost::geometry::cross_product(const P1&, const P2&)’
 inline ResultP cross_product(P1 const& p1, P2 const& p2)
                ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:119:16: note: ‘template<class ResultP, class P1, class P2, <typeprefixerror><anonymous> > ResultP boost::geometry::cross_product(const P1&, const P2&)’ previously declared here
 inline ResultP cross_product(P1 const& p1, P2 const& p2)
                ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:167:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:168:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:188:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:189:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:199:10: error: redefinition of ‘template<class P, <typeprefixerror><anonymous> > constexpr P boost::geometry::cross_product(const P&, const P&)’
 inline P cross_product(P const& p1, P const& p2)
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:174:10: note: ‘template<class P, <typeprefixerror><anonymous> > P boost::geometry::cross_product(const P&, const P&)’ previously declared here
 inline P cross_product(P const& p1, P const& p2)
          ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/inner_range_type.hpp:39:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/inner_range_type.hpp:51:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/iterator_type.hpp:26:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/point_iterator.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/value_type.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/iterator_type.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/value_type.hpp:32:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/iterator_type.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/value_type.hpp:49:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/helper_geometry.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/expand_box.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_box.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:95:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:96:13: error: expected ‘>’ before ‘<’ token
             <
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:117:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:118:13: error: expected ‘>’ before ‘<’ token
             <
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:126:5: error: ‘template<class Point> template<class P, <typeprefixerror><anonymous> > constexpr boost::geometry::model::box<Point>::box(const Point&, const Point&)’ cannot be overloaded
     box(Point const& min_corner, Point const& max_corner)
     ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:101:5: error: with ‘template<class Point> template<class P, <typeprefixerror><anonymous> > boost::geometry::model::box<Point>::box(const Point&, const Point&)’
     box(Point const& min_corner, Point const& max_corner)
     ^~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/helper_geometry.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/expand_box.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_box.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:137:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 1, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:137:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 1, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:155:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 2, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:155:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 2, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:173:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 3, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:173:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 3, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:316:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 1, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:316:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 1, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:326:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 2, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:326:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 2, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:337:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 3, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:337:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 3, DimensionCount>::value, int> = 0
                         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_segment.hpp:39:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp: In member function ‘void boost::geometry::strategy::azimuth::spherical<CalculationType>::compute(const T&, const T&, const T&, const T&, T&, T&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:78:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:45: error: ‘calc_t’ was not declared in this scope
         geometry::formula::result_spherical<calc_t>
                                             ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:45: note: suggested alternative: ‘call_R’
         geometry::formula::result_spherical<calc_t>
                                             ^~~~~~
                                             call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:51: error: template argument 1 is invalid
         geometry::formula::result_spherical<calc_t>
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:93:25: error: request for member ‘azimuth’ in ‘result’, which is of non-class type ‘int’
             a1 = result.azimuth;
                         ^~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:97:25: error: request for member ‘reverse_azimuth’ in ‘result’, which is of non-class type ‘int’
             a2 = result.reverse_azimuth;
                         ^~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/bind/mem_fn.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mem_fn.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/function/detail/prologue.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/function.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/detail/find_iterator.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/find_iterator.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/iter_find.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/split.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/read.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/wkt.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/buffer_end_round.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:46,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/get_pointer.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/get_pointer.hpp:48:40: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
 template<class T> T * get_pointer(std::auto_ptr<T> const& p)
                                        ^~~~~~~~
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/locale:43,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/iomanip:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:52,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:132:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:149:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_a2;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:150:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_x;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:151:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_y;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In constructor ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums::sums()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:156:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_a2’
             , sum_a2(calculation_type())
               ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:156:22: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_a2(calculation_type())
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:157:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_x’
             , sum_x(calculation_type())
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:157:21: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_x(calculation_type())
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:158:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_y’
             , sum_y(calculation_type())
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:158:21: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_y(calculation_type())
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In static member function ‘static void boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::apply(const PointOfSegment&, const PointOfSegment&, boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:180:9: error: ‘calculation_type’ was not declared in this scope
         calculation_type const x1 = boost::numeric_cast<calculation_type>(get<0>(p1));
         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:180:9: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:94:11: note:   ‘boost::geometry::util::calculation_type’
 namespace calculation_type
           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:54:8: note:   ‘boost::geometry::util::detail::calculation_type’
 struct calculation_type
        ^~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:181:26: error: expected ‘;’ before ‘const’
         calculation_type const y1 = boost::numeric_cast<calculation_type>(get<1>(p1));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:182:26: error: expected ‘;’ before ‘const’
         calculation_type const x2 = boost::numeric_cast<calculation_type>(get<0>(p2));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:183:26: error: expected ‘;’ before ‘const’
         calculation_type const y2 = boost::numeric_cast<calculation_type>(get<1>(p2));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:184:26: error: expected ‘;’ before ‘const’
         calculation_type const ai = geometry::detail::determinant<calculation_type>(p1, p2);
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:186:25: error: ‘ai’ was not declared in this scope
         state.sum_a2 += ai;
                         ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:186:25: note: suggested alternative: ‘abi’
         state.sum_a2 += ai;
                         ^~
                         abi
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:30: error: ‘x1’ was not declared in this scope
         state.sum_x += ai * (x1 + x2);
                              ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:30: note: suggested alternative: ‘y1’
         state.sum_x += ai * (x1 + x2);
                              ^~
                              y1
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:35: error: ‘x2’ was not declared in this scope
         state.sum_x += ai * (x1 + x2);
                                   ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:35: note: suggested alternative: ‘p2’
         state.sum_x += ai * (x1 + x2);
                                   ^~
                                   p2
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:188:35: error: ‘y2’ was not declared in this scope
         state.sum_y += ai * (y1 + y2);
                                   ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:188:35: note: suggested alternative: ‘yn’
         state.sum_y += ai * (y1 + y2);
                                   ^~
                                   yn
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In static member function ‘static bool boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::result(const boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums&, Point&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:193:9: error: ‘calculation_type’ was not declared in this scope
         calculation_type const zero = calculation_type();
         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:193:9: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:94:11: note:   ‘boost::geometry::util::calculation_type’
 namespace calculation_type
           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:54:8: note:   ‘boost::geometry::util::detail::calculation_type’
 struct calculation_type
        ^~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:194:61: error: ‘zero’ was not declared in this scope
         if (state.count > 0 && ! math::equals(state.sum_a2, zero))
                                                             ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:194:61: note: suggested alternative: ‘bzero’
         if (state.count > 0 && ! math::equals(state.sum_a2, zero))
                                                             ^~~~
                                                             bzero
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:196:30: error: expected ‘;’ before ‘const’
             calculation_type const v3 = 3;
                              ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:197:30: error: expected ‘;’ before ‘const’
             calculation_type const a3 = v3 * state.sum_a2;
                              ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:205:39: error: ‘a3’ was not declared in this scope
             if (boost::math::isfinite(a3))
                                       ^~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/distance_result.hpp:32:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/default_distance_result.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/interface.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:25: error: ‘integer_sequence’ is not a member of ‘std’
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:25: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:47: error: template argument 1 is invalid
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                                               ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:50: error: expected unqualified-id before ‘>’ token
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                                                  ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:27: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_size<std::integer_sequence<T, Is...>>
                           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:27: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:49: error: template argument 1 is invalid
 struct sequence_size<std::integer_sequence<T, Is...>>
                                                 ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:52: error: expected unqualified-id before ‘>’ token
 struct sequence_size<std::integer_sequence<T, Is...>>
                                                    ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:33: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                 ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:33: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:58: error: wrong number of template arguments (4, should be 2)
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                                          ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:60:8: note: provided for ‘template<long unsigned int I, class Sequence> struct boost::geometry::util::sequence_element’
 struct sequence_element {};
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:61: error: expected unqualified-id before ‘>’ token
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                                             ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:33: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                 ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:33: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:58: error: wrong number of template arguments (4, should be 2)
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                                          ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:60:8: note: provided for ‘template<long unsigned int I, class Sequence> struct boost::geometry::util::sequence_element’
 struct sequence_element {};
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:61: error: expected unqualified-id before ‘>’ token
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                                             ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:19: error: ‘integer_sequence’ is not a member of ‘std’
 struct merge<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                   ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:19: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: error: template argument 1 is invalid
 struct merge<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ... Sequences> struct boost::geometry::util::merge’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: note:   expected a type, got ‘I1s ...’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:21: error: ‘integer_sequence’ is not a member of ‘std’
 struct combine<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:21: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: error: template argument 1 is invalid
 struct combine<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: error: type/value mismatch at argument 2 in template parameter list for ‘template<class Sequence1, class Sequence2> struct boost::geometry::util::combine’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: note:   expected a type, got ‘I1s’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: note: so any instantiation with a non-empty parameter pack would be ill-formed
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:211:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t<LessPred<T1, T2>::value, T1, T2> type;
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/within_concept.hpp:36:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:36,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:46:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:53:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:69:21: error: ‘indexed_type’ was not declared in this scope
                     indexed_type
                     ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:69:21: note: suggested alternative: ‘interior_type’
                     indexed_type
                     ^~~~~~~~~~~~
                     interior_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:70:17: error: template argument 2 is invalid
                 >::type
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:71:9: error: template argument 1 is invalid
         >::type type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:48:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:13: error: template argument 1 is invalid
             >::type reversible_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:13: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:56:9: error: expected nested-name-specifier
         reversible_view
         ^~~~~~~~~~~~~~~
             <
             ~
                 range,
                 ~~~~~~
                 order_as_direction
                 ~~~~~~~~~~~~~~~~~~
                     <
                     ~
                         geometry::point_order<Geometry>::value
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     >::value
                     ~~~~~~~~
             >::type reversible_type;
             ~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:16: error: typedef name may not be a nested-name-specifier
             >::type reversible_type;
                ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:16: error: expected ‘;’ at end of member declaration
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:21: error: ‘reversible_type’ does not name a type; did you mean ‘reversible_view’?
             >::type reversible_type;
                     ^~~~~~~~~~~~~~~
                     reversible_view
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:65:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:75:17: error: ‘reversible’ was not declared in this scope
                 reversible,
                 ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:75:17: note: suggested alternative: ‘Convertible’
                 reversible,
                 ^~~~~~~~~~
                 Convertible
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:77:13: error: template argument 1 is invalid
             >::type closeable_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:79:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:86:43: error: expected ‘)’ before ‘&’ token
     explicit inline normalized_view(range & r)
                                           ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:44: error: ‘closeable’ was not declared in this scope
     typedef typename boost::range_iterator<closeable>::type iterator;
                                            ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:44: note: suggested alternative: ‘fcloseall’
     typedef typename boost::range_iterator<closeable>::type iterator;
                                            ^~~~~~~~~
                                            fcloseall
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:53: error: template argument 1 is invalid
     typedef typename boost::range_iterator<closeable>::type iterator;
                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:50: error: ‘closeable’ was not declared in this scope
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                  ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:50: note: suggested alternative: ‘fcloseall’
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                  ^~~~~~~~~
                                                  fcloseall
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:59: error: template argument 1 is invalid
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                           ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:101:5: error: ‘reversible_type’ does not name a type; did you mean ‘reversible_view’?
     reversible_type m_reversible;
     ^~~~~~~~~~~~~~~
     reversible_view
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::const_iterator boost::geometry::detail::normalized_view<Geometry>::begin() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74: error: no matching function for call to ‘begin(const closeable_type&)’
     inline const_iterator begin() const { return boost::begin(m_closeable); }
                                                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::const_iterator boost::geometry::detail::normalized_view<Geometry>::end() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70: error: no matching function for call to ‘end(const closeable_type&)’
     inline const_iterator end() const { return boost::end(m_closeable); }
                                                                      ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::iterator boost::geometry::detail::normalized_view<Geometry>::begin()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62: error: no matching function for call to ‘begin(boost::geometry::detail::normalized_view<Geometry>::closeable_type&)’
     inline iterator begin() { return boost::begin(m_closeable); }
                                                              ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::iterator boost::geometry::detail::normalized_view<Geometry>::end()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58: error: no matching function for call to ‘end(boost::geometry::detail::normalized_view<Geometry>::closeable_type&)’
     inline iterator end() { return boost::end(m_closeable); }
                                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:61:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:277:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:76:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::projected_point’
 class projected_point
       ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:278:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_segment_box.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp: In static member function ‘static boost::geometry::detail::distance::segment_to_box<Segment, Box, 2, SBStrategy>::return_type boost::geometry::detail::distance::segment_to_box<Segment, Box, 2, SBStrategy>::apply(const Segment&, const Box&, const SBStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:772:26: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
             typedef std::conditional_t
                          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:790:21: error: ‘point_box_strategy_type’ was not declared in this scope
                     point_box_strategy_type
                     ^~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:790:21: note: suggested alternative: ‘point_to_range’
                     point_box_strategy_type
                     ^~~~~~~~~~~~~~~~~~~~~~~
                     point_to_range
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:791:17: error: template argument 3 is invalid
                 >::apply(p[0], box, point_box_strategy_type());
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:791:17: error: template argument 6 is invalid
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:78:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:821:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:531:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track’
 class cross_track
       ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:822:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:79:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:299:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:462:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:274:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track_box_box’
 class cross_track_box_box
       ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:463:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:80:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:226:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:386:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:203:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track_point_box’
 class cross_track_point_box
       ^~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:387:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:81:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp: In static member function ‘static ReturnType boost::geometry::strategy::distance::generic_segment_box::segment_below_of_box(const SegmentPoint&, const SegmentPoint&, const BoxPoint&, const BoxPoint&, const BoxPoint&, const BoxPoint&, const SegmentBoxStrategy&, const AzimuthStrategy&, const EnvelopeSegmentStrategy&, const NormalizePointStrategy&, const DisjointPointBoxStrategy&, const DisjointBoxBoxStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:66:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:81:63: error: type/value mismatch at argument 1 in template parameter list for ‘template<class CS_Tag> struct boost::geometry::detail::disjoint::disjoint_segment_box_sphere_or_spheroid’
                 disjoint_segment_box_sphere_or_spheroid<cs_tag>
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:81:63: note:   expected a type, got ‘cs_tag’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:83:26: error: ‘disjoint_sb’ is not a class, namespace, or enumeration
         typedef typename disjoint_sb::disjoint_info disjoint_info_type;
                          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:99:46: error: ‘disjoint_sb’ is not a class, namespace, or enumeration
         disjoint_info_type disjoint_result = disjoint_sb::
                                              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:103:32: error: ‘disjoint_info_type’ is not a class, namespace, or enumeration
         if (disjoint_result == disjoint_info_type::intersect) //intersect
                                ^~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:108:32: error: ‘disjoint_info_type’ is not a class, namespace, or enumeration
         if (disjoint_result == disjoint_info_type::disjoint_no_vertex)
                                ^~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:141:21: error: type/value mismatch at argument 2 in template parameter list for ‘template<class CT, class CS_Tag> class boost::geometry::formula::vertex_longitude’
                     >::apply(lon1, lat1, lon2, lat2,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:141:21: note:   expected a type, got ‘cs_tag’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:82:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:140:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t<same_units_type::value, units1_type, geometry::radian> units_type;
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::detail::spherical_longitude<ComparePolicy, Point1, Point2, DimensionCount>::are_both_at_antimeridian(const coordinate1_type&, const coordinate2_type&, bool&, bool&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:153:54: error: ‘units_type’ was not declared in this scope
         is_left_at = math::is_longitude_antimeridian<units_type>(l0);
                                                      ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:153:54: note: suggested alternative: ‘units1_type’
         is_left_at = math::is_longitude_antimeridian<units_type>(l0);
                                                      ^~~~~~~~~~
                                                      units1_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::detail::spherical_longitude<ComparePolicy, Point1, Point2, DimensionCount>::apply(const Point1&, const Point2&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:175:43: error: ‘units_type’ was not declared in this scope
                 && math::is_latitude_pole<units_type, is_equatorial>(l1)))
                                           ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:175:43: note: suggested alternative: ‘units1_type’
                 && math::is_latitude_pole<units_type, is_equatorial>(l1)))
                                           ^~~~~~~~~~
                                           units1_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::spherical<ComparePolicy, -1>::apply(const Point1&, const Point2&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:241:21: error: wrong number of template arguments (6, should be 4)
                     >::value
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:133:8: note: provided for ‘template<class ComparePolicy, class Point1, class Point2, long unsigned int DimensionCount> struct boost::geometry::strategy::compare::detail::spherical_longitude’
 struct spherical_longitude
        ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:242:16: error: ‘::apply’ has not been declared
             >::apply(left, right);
                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:242:16: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:90:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp: In member function ‘void boost::geometry::strategy::azimuth::geographic<FormulaPolicy, Spheroid, CalculationType>::compute(const T&, const T&, const T&, const T&, T&, T&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:94:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:101:17: error: ‘calc_t’ was not declared in this scope
                 calc_t,
                 ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:101:17: note: suggested alternative: ‘call_R’
                 calc_t,
                 ^~~~~~
                 call_R
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/intersection.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/distance_cross_track.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:96,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:83:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:91:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_a2;  // squared equatorial radius
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:92:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_e2;  // squared eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:93:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_ep2; // squared second eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:94:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_ep;  // second eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:95:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_c2;  // squared authalic radius
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp: In constructor ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants::spheroid_constants(const Spheroid&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:99:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_a2’
             , m_a2(math::sqr(get_radius<0>(spheroid)))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_e2’
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:46: error: ‘calc_t’ was not declared in this scope
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
                                              ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:46: note: suggested alternative: ‘call_R’
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
                                              ^~~~~~
                                              call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_ep2’
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:21: error: ‘m_e2’ was not declared in this scope
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:21: note: suggested alternative: ‘._92’
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
                     ^~~~
                     ._92
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_ep’
             , m_ep(math::sqrt(m_ep2))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:31: error: ‘m_ep2’ was not declared in this scope
             , m_ep(math::sqrt(m_ep2))
                               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:31: note: suggested alternative: ‘__exp2’
             , m_ep(math::sqrt(m_ep2))
                               ^~~~~
                               __exp2
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:103:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_c2’
             , m_c2(formula_dispatch::authalic_radius_sqr
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:21: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ResultType, class Geometry, class Tag> struct boost::geometry::formula_dispatch::authalic_radius_sqr’
                     >::apply(m_a2, m_e2))
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:21: note:   expected a type, got ‘calc_t’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:30: error: ‘m_a2’ was not declared in this scope
                     >::apply(m_a2, m_e2))
                              ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:30: note: suggested alternative: ‘._92’
                     >::apply(m_a2, m_e2))
                              ^~~~
                              ._92
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:30:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘bool boost::geometry::detail::any_range_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:245:21: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
                 [&](auto&& range)
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘bool boost::geometry::detail::none_range_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:258:21: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
                 [&](auto&& range)
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘Functor boost::geometry::detail::for_each_range(const Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:271:13: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
         [&](auto&& range)
             ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In function ‘void boost::geometry::strategy::convex_hull::detail::get_extremes(const Geometry&, Point&, Point&, const Less&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:57:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     geometry::detail::for_each_range(geometry, [&](auto const& range)
                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In lambda function:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42: error: no matching function for call to ‘begin(const int&)’
         auto left_it = boost::begin(range);
                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43: error: no matching function for call to ‘begin(const int&)’
         auto right_it = boost::begin(range);
                                           ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44: error: no matching function for call to ‘begin(const int&)’
         for (auto it = ++boost::begin(range); it != boost::end(range); ++it)
                                            ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69: error: no matching function for call to ‘end(const int&)’
         for (auto it = ++boost::begin(range); it != boost::end(range); ++it)
                                                                     ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In function ‘void boost::geometry::strategy::convex_hull::detail::assign_ranges(const Geometry&, const Point&, const Point&, Container&, Container&, const SideStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:124:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     geometry::detail::for_each_range(geometry, [&](auto const& range)
                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In lambda function:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42: error: no matching function for call to ‘begin(const int&)’
         for (auto it = boost::begin(range); it != boost::end(range); ++it)
                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67: error: no matching function for call to ‘end(const int&)’
         for (auto it = boost::begin(range); it != boost::end(range); ++it)
                                                                   ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:30:37: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     static auto area(Geometry const&)
                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:30:37: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:50:57: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::cartesian<CT> const&)
                                                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:50:57: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:15:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:41:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:41:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:48:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:48:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:55:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:55:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:62:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:62:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:69:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:69:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:76:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:76:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:84:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:84:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:91:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:91:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:111:64: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_point const& )
                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:111:64: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:120:68: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_multipoint const&)
                                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:120:68: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:129:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_box const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:129:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:138:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_segment<CT> const&)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:138:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:147:61: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian<CT> const&)
                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:147:61: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:16:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:37:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:37:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:44:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:44:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:51:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:51:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:71:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_point const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:71:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:80:60: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_box const& )
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:80:60: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:89:63: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_segment const&)
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:89:63: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:33:37: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     static auto area(Geometry const&)
                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:33:37: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:42:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:42:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:49:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:49:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:56:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:56:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:63:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:63:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:70:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:70:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:79:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:79:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:86:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:86:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:93:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:93:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:47:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:47:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:70:78: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::geographic<FP, SO, S, CT> const& strategy)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:70:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:21:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:47:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:47:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:54:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:54:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:61:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:61:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:68:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:68:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:75:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:75:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:82:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:82:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:90:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:90:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:97:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:97:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:129:64: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_point const& )
                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:129:64: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:138:68: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_multipoint const&)
                                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:138:68: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:147:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_box const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:147:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:156:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_segment<CT> const&)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:156:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:165:61: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical<CT> const&)
                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:165:61: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:15:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:51:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:51:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:58:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:58:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:65:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:65:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:72:77: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:72:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:82:83: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_polysegmental_t<Geometry> * = nullptr) const
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:82:83: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:92:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:92:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:100:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:100:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:107:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:107:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:130:79: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::geographic_segment<FP, S, CT> const& s)
                                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:130:79: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:139:71: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::geographic<FP, S, CT> const& s)
                                                                       ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:139:71: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:42:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:42:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:49:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:49:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:56:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:56:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:88:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_point const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:88:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:97:60: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_box const& )
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:97:60: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:106:67: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_segment<CT> const&)
                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:106:67: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:16:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:49:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:49:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:56:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:56:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:63:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:63:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:86:77: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::geographic_segment<FP, S, CT> const& s)
                                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:86:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:50:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:50:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:62:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:62:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:69:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:69:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:76:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:76:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:83:77: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:83:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:93:83: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_polysegmental_t<Geometry> * = nullptr) const
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:93:83: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:105:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:105:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:112:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:112:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:119:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:119:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:160,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:46:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:46:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:81:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::spherical<R, CT> const& strategy)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:81:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:160:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:49:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:49:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:61:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:61:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:68:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:68:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:75:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:75:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:82:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:82:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:89:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:89:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:98:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:98:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:105:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:105:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:112:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:112:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:61:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/area.hpp:246:73: error: ‘apply’ function uses ‘auto’ type specifier without trailing return type
     static auto apply(Geometry const& geometry, Strategy const& strategy)
                                                                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/area.hpp:246:73: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp: In static member function ‘static int boost::geometry::detail::direction_code_impl<boost::geometry::spherical_tag>::apply(Point1, Point1, Point2)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:239:21: error: wrong number of template arguments (3, should be 1)
                     >
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:39:8: note: provided for ‘template<class CSTag> struct boost::geometry::detail::direction_code_impl’
 struct direction_code_impl
        ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:240:16: error: ‘::apply’ has not been declared
             >::apply(segment_a, segment_b, p);
                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:240:16: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:37: error: ‘integer_sequence’ is not a member of ‘std’
 struct static_check_characters<std::integer_sequence<char, C, Cs...>>
                                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:37: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:68: error: template argument 1 is invalid
 struct static_check_characters<std::integer_sequence<char, C, Cs...>>
                                                                    ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:36: error: ‘integer_sequence’ is not a member of ‘std’
     : static_check_characters<std::integer_sequence<char, Cs...>>
                                    ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:36: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:64: error: template argument 1 is invalid
     : static_check_characters<std::integer_sequence<char, Cs...>>
                                                                ^~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:201:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:201:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:239:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:239:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:26: error: ‘index_sequence’ is not a member of ‘std’
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:26: error: ‘index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:43: error: expected parameter pack before ‘...’
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                                           ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:46: error: wrong number of template arguments (1, should be 3)
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:353:8: note: provided for ‘template<class Is, class Tuple, class T> struct boost::geometry::tuples::push_back_st’
 struct push_back_st;
        ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:18: error: ‘make_index_sequence’ is not a member of ‘std’
             std::make_index_sequence<sizeof...(Ts)>,
                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:18: error: ‘make_index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:51: error: wrong number of template arguments (1, should be 3)
             std::make_index_sequence<sizeof...(Ts)>,
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:353:8: note: provided for ‘template<class Is, class Tuple, class T> struct boost::geometry::tuples::push_back_st’
 struct push_back_st;
        ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:383:9: error: expected ‘{’ before ‘>’ token
         >
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:145:18: error: ‘integer_sequence’ is not a member of ‘std’
             std::integer_sequence
                  ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:145:18: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:148:17: error: wrong number of template arguments (1, should be at least 2)
                 >,
                 ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:641:8: note: provided for ‘template<class Seq, long unsigned int Height, long unsigned int Width> struct boost::geometry::detail::relate::static_mask’
 struct static_mask
        ^~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:149:13: error: expected class-name before numeric constant
             3, 3
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:149:13: error: expected ‘{’ before numeric constant
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlaps/interface.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/relate_impl.hpp:38:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/relate_impl.hpp:38:9: error: expected ‘{’ before ‘<’ token
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:27:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:52: error: template argument 2 is invalid
         std::integer_sequence<unsigned, First, Last>);
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:52: error: template argument 2 is invalid
         std::integer_sequence<unsigned, First, Last>);
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/comparable_distance_far.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/distance_predicates.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/distance_predicates.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:59,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:26:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<std::is_integral<T>::value, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:26:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<std::is_integral<T>::value, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:36:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! std::is_integral<T>::value, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:36:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! std::is_integral<T>::value, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:38:10: error: redefinition of ‘template<class T, <typeprefixerror><anonymous> > T boost::geometry::index::detail::diff_abs(const T&, const T&)’
 inline T diff_abs(T const& v1, T const& v2)
          ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:28:10: note: ‘template<class T, <typeprefixerror><anonymous> > T boost::geometry::index::detail::diff_abs(const T&, const T&)’ previously declared here
 inline T diff_abs(T const& v1, T const& v2)
          ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:62:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:54:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:64:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class T, class Value, class Indexable, class ResultType, int Ver> struct boost::geometry::index::detail::convertible_type_impl’
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:64:9: note:   expected a type, got ‘result_type’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:70:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:81:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:96:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class T, class Value, class Indexable, class ResultType, int Ver> struct boost::geometry::index::detail::convertible_type_impl’
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:96:9: note:   expected a type, got ‘result_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:120:25: error: wrong number of template arguments (1, should be 2)
                         >,
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:994:12: note: provided for ‘template<class, class> struct std::is_same’
     struct is_same;
            ^~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:124:25: error: wrong number of template arguments (3, should be 2)
                         >
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:69:12: note: provided for ‘template<class _Tp, _Tp __v> struct std::integral_constant’
     struct integral_constant
            ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:125:17: error: expected ‘{’ before ‘>’ token
                 >::value
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:149:25: error: wrong number of template arguments (1, should be 2)
                         >,
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:994:12: note: provided for ‘template<class, class> struct std::is_same’
     struct is_same;
            ^~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:42: error: wrong number of template arguments (3, should be 2)
                     std::remove_const_t<V>
                                          ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:69:12: note: provided for ‘template<class _Tp, _Tp __v> struct std::integral_constant’
     struct integral_constant
            ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:151:17: error: expected ‘{’ before ‘>’ token
                 >::value
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: error: ‘remove_const_t’ is not a member of ‘std’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: note: suggested alternative: ‘remove_const’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
                                            remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: note: suggested alternative: ‘remove_const’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
                                            remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:60: error: template argument 1 is invalid
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:62: error: template argument 2 is invalid
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:65: error: expected ‘{’ before ‘value’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                                 ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp: In member function ‘void boost::geometry::index::detail::varray<Value, Capacity>::swap_dispatch(boost::geometry::index::detail::varray<typename boost::geometry::index::detail::varray_detail::varray_traits<Value, Capacity>::value_type, C>&, std::true_type)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1565:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1572:9: error: ‘storage_type’ was not declared in this scope
         storage_type temp;
         ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1572:9: note: suggested alternative:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/traits/traits.h:52:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:148,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/traits/storage_type.h:35:28: note:   ‘Rcpp::traits::storage_type’
 template<int RTYPE> struct storage_type{
                            ^~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1573:53: error: ‘temp’ was not declared in this scope
         Value * temp_ptr = reinterpret_cast<Value*>(temp.address());
                                                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1573:53: note: suggested alternative: ‘tfm’
         Value * temp_ptr = reinterpret_cast<Value*>(temp.address());
                                                     ^~~~
                                                     tfm
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/linear.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:78,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:91:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:109:30: error: ‘separation_type’ has not been declared
                              separation_type & separation,
                              ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp: In static member function ‘static void boost::geometry::index::detail::rtree::linear::find_greatest_normalized_separation<Elements, Parameters, Translator, Tag, DimensionIndex>::apply(const Elements&, const Parameters&, const Translator&, int&, size_t&, size_t&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:170:33: error: ‘separation_type’ was not declared in this scope
         separation = difference<separation_type>(lowest_high, highest_low);
                                 ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:170:33: note: suggested alternative: ‘fraction_type’
         separation = difference<separation_type>(lowest_high, highest_low);
                                 ^~~~~~~~~~~~~~~
                                 fraction_type
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/scoped_ptr.hpp:13:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/query_iterators.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:90,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/smart_ptr/scoped_ptr.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/smart_ptr/scoped_ptr.hpp:74:31: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
     explicit scoped_ptr( std::auto_ptr<T> p ) BOOST_SP_NOEXCEPT : px( p.release() )
                               ^~~~~~~~
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/locale:43,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/iomanip:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:52,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:1243:10: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:1310:10: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     std::conditional_t
          ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:27:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:82:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:40: error: ‘sub_type’ was not declared in this scope
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                        ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:40: note: suggested alternative: ‘true_type’
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                        ^~~~~~~~
                                        true_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 1 is invalid
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 3 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:92:22: error: ‘sub_sub_range’ is not a class, namespace, or enumeration
     typedef typename sub_sub_range::return_type return_type;
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp: In static member function ‘static boost::geometry::detail_dispatch::sub_range<Geometry, Tag, true>::return_type boost::geometry::detail_dispatch::sub_range<Geometry, Tag, true>::apply(Geometry&, const Id&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:100:16: error: ‘sub_sub_range’ is not a class, namespace, or enumeration
         return sub_sub_range::apply(range::at(geometry, mi), id);
                ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp: In function ‘void boost::geometry::sectionalize(const Geometry&, const RobustPolicy&, Sections&, int, std::size_t)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:17: error: type/value mismatch at argument 1 in template parameter list for ‘template<class Tag, class CSTag, class CalculationType> struct boost::geometry::strategy::expand::services::default_strategy’
                 >,
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:17: note:   expected a type, got ‘(<expression error> < std::is_same<typename boost::geometry::tag<Geometry>::type, boost::geometry::box_tag>::value)’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:18: error: expected identifier before ‘,’ token
                 >,
                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:18: error: expected unqualified-id before ‘,’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1082:13: error: expected unqualified-id before ‘typename’
             typename cs_tag<Geometry>::type
             ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1090:11: error: there are no arguments to ‘expand_strategy_type’ that depend on a template parameter, so a declaration of ‘expand_strategy_type’ must be available [-fpermissive]
           expand_strategy_type(),
           ^~~~~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/ever_circling_iterator.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:57,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: error: ‘conditional_t’ is not a member of ‘std’
         std::conditional_t
              ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: note: suggested alternative: ‘conditional’
         std::conditional_t
              ^~~~~~~~~~~~~
              conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: note: suggested alternative: ‘conditional’
         std::conditional_t
              ^~~~~~~~~~~~~
              conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:51:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class Derived, class Base, class Value, class Traversal, class Reference, class Difference> class boost::iterators::iterator_adaptor’
         >
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:51:9: note:   expected a type, got ‘(<expression error> < std::is_convertible<typename boost::iterators::iterator_traversal<Base>::type, boost::iterators::random_access_traversal_tag>::value)’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:52:5: error: expected ‘{’ before ‘>’ token
     >
     ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp: In static member function ‘static void boost::geometry::detail::get_turns::get_turns_generic<Geometry1, Geometry2, Reverse1, Reverse2, TurnPolicy>::apply(int, const Geometry1&, int, const Geometry2&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:557:22: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
         typedef std::integer_sequence<std::size_t, 0, 1> dimensions;
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:564:42: error: ‘dimensions’ was not declared in this scope
         geometry::sectionalize<Reverse1, dimensions>(geometry1, robust_policy,
                                          ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:564:42: note: suggested alternative: ‘dimension’
         geometry::sectionalize<Reverse1, dimensions>(geometry1, robust_policy,
                                          ^~~~~~~~~~
                                          dimension
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp: In function ‘void boost::geometry::get_turns(const Geometry1&, const Geometry2&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1160:10: error: ‘conditional_t’ is not a member of ‘std’
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1160:10: note: suggested alternative: ‘conditional’
     std::conditional_t
          ^~~~~~~~~~~~~
          conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1170:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:9: error: expected primary-expression before ‘>’ token
         >::apply(0, geometry1,
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:12: error: ‘::apply’ has not been declared
         >::apply(0, geometry1,
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/has_self_intersections.hpp:26:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/backtrack_check_si.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_policies.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:40,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp: In static member function ‘static bool boost::geometry::detail::self_get_turn_points::get_turns<Reverse, TurnPolicy>::apply(const Geometry&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&, int, bool)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:152:22: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
         typedef std::integer_sequence<std::size_t, 0, 1> dimensions;
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:155:41: error: ‘dimensions’ was not declared in this scope
         geometry::sectionalize<Reverse, dimensions>(geometry, robust_policy, sec,
                                         ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:155:41: note: suggested alternative: ‘dimension’
         geometry::sectionalize<Reverse, dimensions>(geometry, robust_policy, sec,
                                         ^~~~~~~~~~
                                         dimension
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:33:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersects/implementation.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/intersects.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/linear_or_areal_to_areal.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/implementation.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/comparable_distance/implementation.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/comparable_distance.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/piece_border.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::any_point_of(Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:526:70: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return ! dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                                      ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::any_segment_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:538:78: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return ! dispatch::for_each_segment<Geometry const>::apply(geometry, [&](auto&& s)
                                                                              ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::none_point_of(Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:549:68: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::none_segment_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:561:76: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return dispatch::for_each_segment<Geometry const>::apply(geometry, [&](auto&& s)
                                                                            ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘Functor boost::geometry::for_each_point(Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:587:61: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                             ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘Functor boost::geometry::for_each_segment(Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:615:63: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     dispatch::for_each_segment<Geometry>::apply(geometry, [&](auto&& s)
                                                               ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/implementation.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersects/implementation.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/intersects.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/linear_or_areal_to_areal.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/implementation.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/comparable_distance/implementation.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/comparable_distance.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/piece_border.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp: In function ‘bool boost::geometry::detail::disjoint::rings_containing(const Geometry1&, const Geometry2&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:67:58: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return geometry::detail::any_range_of(geometry2, [&](auto const& range)
                                                          ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp: In static member function ‘static bool boost::geometry::detail::disjoint::areal_box<Areal, Box>::apply(const Areal&, const Box&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:121:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
         if (! geometry::all_segments_of(areal, [&](auto const& s)
                                                    ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp: In constructor ‘boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::original_ring::original_ring(const clockwise_ring_type&, bool, bool, const envelope_strategy_type&, const expand_strategy_type&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:248:26: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
             typedef std::integer_sequence<std::size_t, 0> dimensions;
                          ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:249:43: error: ‘dimensions’ was not declared in this scope
             geometry::sectionalize<false, dimensions>(m_ring,
                                           ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:249:43: note: suggested alternative: ‘dimension’
             geometry::sectionalize<false, dimensions>(m_ring,
                                           ^~~~~~~~~~
                                           dimension
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp: In member function ‘void boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::sectionalize(const boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::piece&, const boost::geometry::detail::buffer::buffered_ring<Ring>&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:18: error: ‘integer_sequence’ is not a member of ‘std’
             std::integer_sequence<std::size_t, 0, 1> // x,y dimension
                  ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:18: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:52: error: wrong number of template arguments (4, should be 2)
             std::integer_sequence<std::size_t, 0, 1> // x,y dimension
                                                    ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:389:8: note: provided for ‘template<class Point, class DimensionVector> struct boost::geometry::detail::sectionalize::sectionalize_part’
 struct sectionalize_part
        ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:862:9: error: expected unqualified-id before ‘>’ token
         > sectionalizer;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:869:9: error: ‘sectionalizer’ has not been declared
         sectionalizer::apply(monotonic_sections,
         ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/simplify.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp: In static member function ‘static void boost::geometry::concepts::SimplifyStrategy<Strategy, Point>::checker::apply(ApplyMethod)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:62:26: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
             typedef std::conditional_t
                          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:84:51: error: ‘base_index’ was not declared in this scope
             boost::ignore_unused<parameter_types, base_index>();
                                                   ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:84:51: note: suggested alternative: ‘basename’
             boost::ignore_unused<parameter_types, base_index>();
                                                   ^~~~~~~~~~
                                                   basename
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/follow.hpp:33:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:38: error: ‘index_sequence’ is not a member of ‘std’
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                      ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:38: error: ‘index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:55: error: expected parameter pack before ‘...’
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:58: error: wrong number of template arguments (1, should be 2)
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                                          ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:233:8: note: provided for ‘template<class Is, class Tuple> struct boost::geometry::detail::tupled_back_inserters_st’
 struct tupled_back_inserters_st;
        ^~~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:18: error: ‘make_index_sequence’ is not a member of ‘std’
             std::make_index_sequence<sizeof...(Ts)>,
                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:18: error: ‘make_index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:51: error: wrong number of template arguments (1, should be 2)
             std::make_index_sequence<sizeof...(Ts)>,
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:233:8: note: provided for ‘template<class Is, class Tuple> struct boost::geometry::detail::tupled_back_inserters_st’
 struct tupled_back_inserters_st;
        ^~~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:252:9: error: expected ‘{’ before ‘>’ token
         >
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:32:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp: In function ‘void boost::geometry::get_intersection_points(const Geometry1&, const Geometry2&, const RobustPolicy&, Turns&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:120:10: error: ‘conditional_t’ is not a member of ‘std’
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:120:10: note: suggested alternative: ‘conditional’
     std::conditional_t
          ^~~~~~~~~~~~~
          conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:130:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:9: error: expected primary-expression before ‘>’ token
         >::apply(0, geometry1,
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:12: error: ‘::apply’ has not been declared
         >::apply(0, geometry1,
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:53,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:278:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:36: error: ‘polygon_type’ was not declared in this scope
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                    ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:36: note: suggested alternative: ‘polygon_tag’
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                    ^~~~~~~~~~~~
                                    polygon_tag
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 1 is invalid
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 3 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 4 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:289:49: error: ‘polygon_type’ has not been declared
         static inline inner_iterator_type apply(polygon_type& polygon)
                                                 ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:297:49: error: ‘polygon_type’ has not been declared
         static inline inner_iterator_type apply(polygon_type& polygon)
                                                 ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:307:65: error: ‘value_type’ in ‘struct std::iterator_traits<int>’ does not name a type
             typename std::iterator_traits<inner_iterator_type>::value_type,
                                                                 ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:310:65: error: ‘reference’ in ‘struct std::iterator_traits<int>’ does not name a type
             typename std::iterator_traits<inner_iterator_type>::reference
                                                                 ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:311:9: error: template argument 3 is invalid
         > rings_iterator_type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:311:9: error: template argument 6 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp: In static member function ‘static void boost::geometry::detail::boundary_views::views_container_initializer<MultiPolygon, boost::geometry::multi_polygon_tag>::apply(const MultiPolygon&, BoundaryView*)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:319:59: error: expression list treated as compound expression in initializer [-fpermissive]
                                   boost::end(multipolygon));
                                                           ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:945:17: error: template argument 4 is invalid
                 >,
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:947:9: error: expected ‘{’ before ‘>’ token
         >
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp: In function ‘OutputIterator boost::geometry::detail::intersection::insert(const Geometry1&, const Geometry2&, RobustPolicy, OutputIterator, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1432:17: error: ‘conditional_t’ is not a member of ‘std’
     return std::conditional_t
                 ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1432:17: note: suggested alternative: ‘conditional’
     return std::conditional_t
                 ^~~~~~~~~~~~~
                 conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1442:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:9: error: expected primary-expression before ‘>’ token
         >::apply(geometry1, geometry2, robust_policy, out, strategy);
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:12: error: ‘::apply’ has not been declared
         >::apply(geometry1, geometry2, robust_policy, out, strategy);
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:455:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:457:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:493:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:495:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:533:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:535:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:570:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:572:13: error: expected ‘{’ before ‘>’ token
             >
             ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:89:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:87:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:87:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:108:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:108:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:110:27: error: redefinition of ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > constexpr Geometry boost::geometry::make(const Type&, const Type&)’
 constexpr inline Geometry make(Type const& c1, Type const& c2)
                           ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:89:17: note: ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > Geometry boost::geometry::make(const Type&, const Type&)’ previously declared here
 inline Geometry make(Type const& c1, Type const& c2)
                 ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:143:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:143:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:163:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:163:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:165:27: error: redefinition of ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > constexpr Geometry boost::geometry::make(const Type&, const Type&, const Type&)’
 constexpr inline Geometry make(Type const& c1, Type const& c2, Type const& c3)
                           ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:145:17: note: ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > Geometry boost::geometry::make(const Type&, const Type&, const Type&)’ previously declared here
 inline Geometry make(Type const& c1, Type const& c2, Type const& c3)
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/touches.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:102,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/touches/implementation.hpp: In function ‘bool boost::geometry::detail::touches::rings_containing(const FirstGeometry&, const SecondGeometry&, const IntersectionStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/touches/implementation.hpp:225:58: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return geometry::detail::any_range_of(geometry2, [&](auto const& range)
                                                          ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/coordinate_type.hpp:94:17:   required from ‘struct boost::geometry::coordinate_type<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp:99:54:   required from ‘class boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/for_each_coordinate.hpp:67:5:   required from ‘class boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
LAS.cpp:582:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
         >::type type;
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/arithmetic.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp: In instantiation of ‘class boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/for_each_coordinate.hpp:67:5:   required from ‘class boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
LAS.cpp:582:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp:107:10: error: ‘value’ is not a member of ‘boost::geometry::dimension<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
     enum { ccount = dimension<Geometry>::value };
          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/point_type.hpp:158:17:   required from ‘struct boost::geometry::point_type<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/polygon_concept.hpp:55:52:   required from ‘class boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/multi_polygon.hpp:57:5:   required from ‘class boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
LAS.cpp:583:18:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
         >::type type;
                 ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/read.hpp:907:70:   required from ‘void boost::geometry::read_wkt(const string&, Geometry&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; std::string = std::basic_string<char>]’
LAS.cpp:585:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:113:40:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:586:45:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:114:29:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:586:45:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:113:40:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:618:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
make: *** [/software/c4/cbi/software/R-4.0.3/lib64/R/etc/Makeconf:181: LAS.o] Error 1
ERROR: compilation failed for package ‘lidR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/lidR’

```
### CRAN

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c BoundingBox.cpp -o BoundingBox.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_Gatziolis2019.cpp -o C_Gatziolis2019.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_dalponte2016.cpp -o C_dalponte2016.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_delaunay.cpp -o C_delaunay.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c GridPartition.cpp -o GridPartition.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.3/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c LAS.cpp -o LAS.o
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17:0,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:27:138: note: #pragma message: CAUTION: Boost.Geometry in Boost 1.73 deprecates support for C++03 and will require C++14 from Boost 1.75 onwards.
 BOOST_PRAGMA_MESSAGE("CAUTION: Boost.Geometry in Boost 1.73 deprecates support for C++03 and will require C++14 from Boost 1.75 onwards.")
                                                                                                                                          ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:28:110: note: #pragma message: CAUTION: Define BOOST_GEOMETRY_DISABLE_DEPRECATED_03_WARNING to suppress this message.
 BOOST_PRAGMA_MESSAGE("CAUTION: Define BOOST_GEOMETRY_DISABLE_DEPRECATED_03_WARNING to suppress this message.")
                                                                                                              ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:54:25: error: expected template-name before ‘<’ token
     : std::conditional_t<Trait::value, conjunction<Traits...>, Trait>
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:54:25: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:68:25: error: expected template-name before ‘<’ token
     : std::conditional_t<Trait::value, Trait, disjunction<Traits...>>
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:68:25: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:95:23: error: ‘remove_cv_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_cv_t<std::remove_reference_t<T>>;
                       ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:105:23: error: ‘remove_const_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_const_t<std::remove_reference_t<T>>;
                       ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:115:23: error: ‘remove_const_t’ in namespace ‘std’ does not name a template type
     using type = std::remove_const_t
                       ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:129:23: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     using type = std::conditional_t
                       ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/type_traits_std.hpp:166:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:96:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:111:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:116:17: error: wrong number of template arguments (4, should be 2)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:73:8: note: provided for ‘template<class GeometryTag, class Geometry> struct boost::geometry::core_dispatch::ring_return_type’
 struct ring_return_type
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:108:22: error: expected nested-name-specifier
     typedef typename ring_return_type
                      ^~~~~~~~~~~~~~~~
         <
         ~             
             linestring_tag,
             ~~~~~~~~~~~~~~~
             std::conditional_t
             ~~~~~~~~~~~~~~~~~~
                 <
                 ~     
                     std::is_const<MultiLinestring>::value,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiLinestring>::type const,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiLinestring>::type
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 >
                 ~     
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:127:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:132:17: error: wrong number of template arguments (4, should be 2)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:73:8: note: provided for ‘template<class GeometryTag, class Geometry> struct boost::geometry::core_dispatch::ring_return_type’
 struct ring_return_type
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:124:22: error: expected nested-name-specifier
     typedef typename ring_return_type
                      ^~~~~~~~~~~~~~~~
         <
         ~             
             polygon_tag,
             ~~~~~~~~~~~~
             std::conditional_t
             ~~~~~~~~~~~~~~~~~~
                 <
                 ~     
                     std::is_const<MultiPolygon>::value,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiPolygon>::type const,
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     typename boost::range_value<MultiPolygon>::type
                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                 >
                 ~     
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/coordinate_type.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_floating_point.hpp:40:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:39:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/interior_type.hpp:86:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:44:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag_cast.hpp:52:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:41:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:41:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_most_precise.hpp:112:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/direction.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_calculation_type.hpp:41:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/select_calculation_type.hpp:61:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/no_rescale_policy.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/rescale_policy_tags.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:246:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:259:5: error: ‘fp_type’ does not name a type; did you mean ‘type’?
     fp_type m_approximation;
     ^~~~~~~
     type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:262:19: error: ‘fp_type’ does not name a type; did you mean ‘type’?
     static inline fp_type scale()
                   ^~~~~~~
                   type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In constructor ‘boost::geometry::segment_ratio<Type>::segment_ratio()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:118:11: error: class ‘boost::geometry::segment_ratio<Type>’ does not have any field named ‘m_approximation’
         , m_approximation(0)
           ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘void boost::geometry::segment_ratio<Type>::initialize()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:148:9: error: ‘m_approximation’ was not declared in this scope
         m_approximation =
         ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:148:9: note: suggested alternative: ‘__cpp_exceptions’
         m_approximation =
         ^~~~~~~~~~~~~~~
         __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:37: error: ‘fp_type’ was not declared in this scope
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                     ^~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:37: note: suggested alternative: ‘type’
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                     ^~~~~~~
                                     type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:61: error: there are no arguments to ‘scale’ that depend on a template parameter, so a declaration of ‘scale’ must be available [-fpermissive]
                 boost::numeric_cast<fp_type>(m_numerator) * scale()
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:151:61: note: (if you use ‘-fpermissive’, G++ will accept your code, but allowing the use of an undeclared name is deprecated)
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::near_end() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:191:16: error: ‘fp_type’ does not name a type; did you mean ‘type’?
         static fp_type const small_part_of_scale = scale() / 100;
                ^~~~~~~
                type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:16: error: ‘m_approximation’ was not declared in this scope
         return m_approximation < small_part_of_scale
                ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:16: note: suggested alternative: ‘__cpp_exceptions’
         return m_approximation < small_part_of_scale
                ^~~~~~~~~~~~~~~
                __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:192:34: error: ‘small_part_of_scale’ was not declared in this scope
         return m_approximation < small_part_of_scale
                                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:193:34: error: there are no arguments to ‘scale’ that depend on a template parameter, so a declaration of ‘scale’ must be available [-fpermissive]
             || m_approximation > scale() - small_part_of_scale;
                                  ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::close_to(const thistype&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:198:36: error: ‘m_approximation’ was not declared in this scope
         return geometry::math::abs(m_approximation - other.m_approximation) < 50;
                                    ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:198:36: note: suggested alternative: ‘__cpp_exceptions’
         return geometry::math::abs(m_approximation - other.m_approximation) < 50;
                                    ^~~~~~~~~~~~~~~
                                    __cpp_exceptions
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp: In member function ‘bool boost::geometry::segment_ratio<Type>::operator<(const thistype&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:205:15: error: ‘m_approximation’ was not declared in this scope
             : m_approximation < other.m_approximation;
               ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio.hpp:205:15: note: suggested alternative: ‘__cpp_exceptions’
             : m_approximation < other.m_approximation;
               ^~~~~~~~~~~~~~~
               __cpp_exceptions
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:20:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:35:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:47:52: error: type/value mismatch at argument 1 in template parameter list for ‘template<class Type> class boost::geometry::segment_ratio’
     typedef geometry::segment_ratio<coordinate_type> type;
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/robustness/segment_ratio_type.hpp:47:52: note:   expected a type, got ‘coordinate_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:34:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:91:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:213:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:269:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:280:13: error: ‘min_bit_size_type’ was not declared in this scope
             min_bit_size_type::value,
             ^~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:280:13: note: suggested alternative: ‘bit_size_type’
             min_bit_size_type::value,
             ^~~~~~~~~~~~~~~~~
             bit_size_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:9: error: template argument 2 is invalid
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:10: error: expected identifier before ‘::’ token
         >::type type;
          ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:12: error: typedef name may not be a nested-name-specifier
         >::type type;
            ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:12: error: expected ‘;’ at end of member declaration
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/promote_integral.hpp:282:17: error: declaration does not declare anything [-fpermissive]
         >::type type;
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:70:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/point_in_poly_winding.hpp:30:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:46,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp: In static member function ‘static int boost::geometry::strategy::side::side_by_triangle<CalculationType>::apply(const P1&, const P2&, const P&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:232:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:249:13: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ... Types> struct boost::geometry::select_most_precise’
             >::type promoted_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:249:13: note:   expected a type, got ‘coordinate_type’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:260:13: error: type/value mismatch at argument 1 in template parameter list for ‘template<class CalculationType> template<class CoordinateType, class PromotedType, bool AreAllIntegralCoordinates> struct boost::geometry::strategy::side::side_by_triangle<CalculationType>::compute_side_value’
             >::apply(p1, p2, p, epsp);
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/side_by_triangle.hpp:260:13: note:   expected a type, got ‘coordinate_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:112:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:113:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:133:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:134:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:144:16: error: redefinition of ‘template<class ResultP, class P1, class P2, <typeprefixerror><anonymous> > constexpr ResultP boost::geometry::cross_product(const P1&, const P2&)’
 inline ResultP cross_product(P1 const& p1, P2 const& p2)
                ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:119:16: note: ‘template<class ResultP, class P1, class P2, <typeprefixerror><anonymous> > ResultP boost::geometry::cross_product(const P1&, const P2&)’ previously declared here
 inline ResultP cross_product(P1 const& p1, P2 const& p2)
                ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:167:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:168:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:188:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:189:9: error: expected ‘>’ before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:199:10: error: redefinition of ‘template<class P, <typeprefixerror><anonymous> > constexpr P boost::geometry::cross_product(const P&, const P&)’
 inline P cross_product(P const& p1, P const& p2)
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/cross_product.hpp:174:10: note: ‘template<class P, <typeprefixerror><anonymous> > P boost::geometry::cross_product(const P&, const P&)’ previously declared here
 inline P cross_product(P const& p1, P const& p2)
          ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/inner_range_type.hpp:39:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/inner_range_type.hpp:51:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/iterator_type.hpp:26:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/point_iterator.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/value_type.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/iterator_type.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/point_iterator/value_type.hpp:32:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/iterator_type.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/segment_iterator.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/detail/segment_iterator/value_type.hpp:49:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/helper_geometry.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/expand_box.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_box.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:95:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:96:13: error: expected ‘>’ before ‘<’ token
             <
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:117:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:118:13: error: expected ‘>’ before ‘<’ token
             <
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:126:5: error: ‘template<class Point> template<class P, <typeprefixerror><anonymous> > constexpr boost::geometry::model::box<Point>::box(const Point&, const Point&)’ cannot be overloaded
     box(Point const& min_corner, Point const& max_corner)
     ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/box.hpp:101:5: error: with ‘template<class Point> template<class P, <typeprefixerror><anonymous> > boost::geometry::model::box<Point>::box(const Point&, const Point&)’
     box(Point const& min_corner, Point const& max_corner)
     ^~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/helper_geometry.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/expand_box.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_box.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:137:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 1, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:137:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 1, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:155:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 2, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:155:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 2, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:173:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 3, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:173:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_leq<C, 3, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:316:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 1, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:316:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 1, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:326:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 2, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:326:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 2, DimensionCount>::value, int> = 0
                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:337:14: error: ‘std::enable_if_t’ has not been declared
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 3, DimensionCount>::value, int> = 0
              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/point.hpp:337:25: error: expected ‘>’ before ‘<’ token
         std::enable_if_t<geometry::detail::is_coordinates_number_eq<C, 3, DimensionCount>::value, int> = 0
                         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope_segment.hpp:39:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/spherical/envelope.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/intersection.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp: In member function ‘void boost::geometry::strategy::azimuth::spherical<CalculationType>::compute(const T&, const T&, const T&, const T&, T&, T&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:78:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:45: error: ‘calc_t’ was not declared in this scope
         geometry::formula::result_spherical<calc_t>
                                             ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:45: note: suggested alternative: ‘call_R’
         geometry::formula::result_spherical<calc_t>
                                             ^~~~~~
                                             call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:83:51: error: template argument 1 is invalid
         geometry::formula::result_spherical<calc_t>
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:93:25: error: request for member ‘azimuth’ in ‘result’, which is of non-class type ‘int’
             a1 = result.azimuth;
                         ^~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/azimuth.hpp:97:25: error: request for member ‘reverse_azimuth’ in ‘result’, which is of non-class type ‘int’
             a2 = result.reverse_azimuth;
                         ^~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/bind/mem_fn.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mem_fn.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/function/detail/prologue.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/function.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/detail/find_iterator.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/find_iterator.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/iter_find.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string/split.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/algorithm/string.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/read.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/wkt.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/buffer_end_round.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:46,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/get_pointer.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/get_pointer.hpp:48:40: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
 template<class T> T * get_pointer(std::auto_ptr<T> const& p)
                                        ^~~~~~~~
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/locale:43,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/iomanip:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:52,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:132:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:149:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_a2;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:150:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_x;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:151:9: error: ‘calculation_type’ does not name a type; did you mean ‘CalculationType’?
         calculation_type sum_y;
         ^~~~~~~~~~~~~~~~
         CalculationType
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In constructor ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums::sums()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:156:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_a2’
             , sum_a2(calculation_type())
               ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:156:22: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_a2(calculation_type())
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:157:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_x’
             , sum_x(calculation_type())
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:157:21: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_x(calculation_type())
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:158:15: error: class ‘boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums’ does not have any field named ‘sum_y’
             , sum_y(calculation_type())
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:158:21: error: there are no arguments to ‘calculation_type’ that depend on a template parameter, so a declaration of ‘calculation_type’ must be available [-fpermissive]
             , sum_y(calculation_type())
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In static member function ‘static void boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::apply(const PointOfSegment&, const PointOfSegment&, boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:180:9: error: ‘calculation_type’ was not declared in this scope
         calculation_type const x1 = boost::numeric_cast<calculation_type>(get<0>(p1));
         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:180:9: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:94:11: note:   ‘boost::geometry::util::calculation_type’
 namespace calculation_type
           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:54:8: note:   ‘boost::geometry::util::detail::calculation_type’
 struct calculation_type
        ^~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:181:26: error: expected ‘;’ before ‘const’
         calculation_type const y1 = boost::numeric_cast<calculation_type>(get<1>(p1));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:182:26: error: expected ‘;’ before ‘const’
         calculation_type const x2 = boost::numeric_cast<calculation_type>(get<0>(p2));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:183:26: error: expected ‘;’ before ‘const’
         calculation_type const y2 = boost::numeric_cast<calculation_type>(get<1>(p2));
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:184:26: error: expected ‘;’ before ‘const’
         calculation_type const ai = geometry::detail::determinant<calculation_type>(p1, p2);
                          ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:186:25: error: ‘ai’ was not declared in this scope
         state.sum_a2 += ai;
                         ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:186:25: note: suggested alternative: ‘abi’
         state.sum_a2 += ai;
                         ^~
                         abi
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:30: error: ‘x1’ was not declared in this scope
         state.sum_x += ai * (x1 + x2);
                              ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:30: note: suggested alternative: ‘y1’
         state.sum_x += ai * (x1 + x2);
                              ^~
                              y1
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:35: error: ‘x2’ was not declared in this scope
         state.sum_x += ai * (x1 + x2);
                                   ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:187:35: note: suggested alternative: ‘p2’
         state.sum_x += ai * (x1 + x2);
                                   ^~
                                   p2
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:188:35: error: ‘y2’ was not declared in this scope
         state.sum_y += ai * (y1 + y2);
                                   ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:188:35: note: suggested alternative: ‘yn’
         state.sum_y += ai * (y1 + y2);
                                   ^~
                                   yn
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp: In static member function ‘static bool boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::result(const boost::geometry::strategy::centroid::bashein_detmer<Point, PointOfSegment, CalculationType>::sums&, Point&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:193:9: error: ‘calculation_type’ was not declared in this scope
         calculation_type const zero = calculation_type();
         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:193:9: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/disjoint_segment_box.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/intersection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:94:11: note:   ‘boost::geometry::util::calculation_type’
 namespace calculation_type
           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/calculation_type.hpp:54:8: note:   ‘boost::geometry::util::detail::calculation_type’
 struct calculation_type
        ^~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:54:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:194:61: error: ‘zero’ was not declared in this scope
         if (state.count > 0 && ! math::equals(state.sum_a2, zero))
                                                             ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:194:61: note: suggested alternative: ‘bzero’
         if (state.count > 0 && ! math::equals(state.sum_a2, zero))
                                                             ^~~~
                                                             bzero
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:196:30: error: expected ‘;’ before ‘const’
             calculation_type const v3 = 3;
                              ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:197:30: error: expected ‘;’ before ‘const’
             calculation_type const a3 = v3 * state.sum_a2;
                              ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_bashein_detmer.hpp:205:39: error: ‘a3’ was not declared in this scope
             if (boost::math::isfinite(a3))
                                       ^~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/distance_result.hpp:32:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/default_distance_result.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/interface.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:25: error: ‘integer_sequence’ is not a member of ‘std’
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                         ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:25: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:47: error: template argument 1 is invalid
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                                               ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:40:50: error: expected unqualified-id before ‘>’ token
 struct is_sequence<std::integer_sequence<T, Is...>> : std::true_type {};
                                                  ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:27: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_size<std::integer_sequence<T, Is...>>
                           ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:27: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:49: error: template argument 1 is invalid
 struct sequence_size<std::integer_sequence<T, Is...>>
                                                 ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:53:52: error: expected unqualified-id before ‘>’ token
 struct sequence_size<std::integer_sequence<T, Is...>>
                                                    ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:33: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                 ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:33: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:58: error: wrong number of template arguments (4, should be 2)
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                                          ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:60:8: note: provided for ‘template<long unsigned int I, class Sequence> struct boost::geometry::util::sequence_element’
 struct sequence_element {};
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:75:61: error: expected unqualified-id before ‘>’ token
 struct sequence_element<I, std::integer_sequence<T, J, Js...>>
                                                             ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:33: error: ‘integer_sequence’ is not a member of ‘std’
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                 ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:33: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:58: error: wrong number of template arguments (4, should be 2)
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                                          ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:60:8: note: provided for ‘template<long unsigned int I, class Sequence> struct boost::geometry::util::sequence_element’
 struct sequence_element {};
        ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:84:61: error: expected unqualified-id before ‘>’ token
 struct sequence_element<0, std::integer_sequence<T, J, Js...>>
                                                             ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:19: error: ‘integer_sequence’ is not a member of ‘std’
 struct merge<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                   ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:19: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: error: template argument 1 is invalid
 struct merge<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ... Sequences> struct boost::geometry::util::merge’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:135:45: note:   expected a type, got ‘I1s ...’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:21: error: ‘integer_sequence’ is not a member of ‘std’
 struct combine<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:21: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: error: template argument 1 is invalid
 struct combine<std::integer_sequence<T, I1s...>, std::integer_sequence<T, I2s...>>
                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: error: type/value mismatch at argument 2 in template parameter list for ‘template<class Sequence1, class Sequence2> struct boost::geometry::util::combine’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: note:   expected a type, got ‘I1s’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:173:47: note: so any instantiation with a non-empty parameter pack would be ill-formed
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/sequence.hpp:211:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t<LessPred<T1, T2>::value, T1, T2> type;
                  ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/within_concept.hpp:36:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:36,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:46:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:53:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:69:21: error: ‘indexed_type’ was not declared in this scope
                     indexed_type
                     ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:69:21: note: suggested alternative: ‘interior_type’
                     indexed_type
                     ^~~~~~~~~~~~
                     interior_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:70:17: error: template argument 2 is invalid
                 >::type
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/parameter_type_of.hpp:71:9: error: template argument 1 is invalid
         >::type type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:48:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:13: error: template argument 1 is invalid
             >::type reversible_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:13: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:56:9: error: expected nested-name-specifier
         reversible_view
         ^~~~~~~~~~~~~~~
             <
             ~
                 range,
                 ~~~~~~
                 order_as_direction
                 ~~~~~~~~~~~~~~~~~~
                     <
                     ~
                         geometry::point_order<Geometry>::value
                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                     >::value
                     ~~~~~~~~
             >::type reversible_type;
             ~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:16: error: typedef name may not be a nested-name-specifier
             >::type reversible_type;
                ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:16: error: expected ‘;’ at end of member declaration
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:63:21: error: ‘reversible_type’ does not name a type; did you mean ‘reversible_view’?
             >::type reversible_type;
                     ^~~~~~~~~~~~~~~
                     reversible_view
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:65:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:75:17: error: ‘reversible’ was not declared in this scope
                 reversible,
                 ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:75:17: note: suggested alternative: ‘Convertible’
                 reversible,
                 ^~~~~~~~~~
                 Convertible
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:77:13: error: template argument 1 is invalid
             >::type closeable_type;
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:79:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:86:43: error: expected ‘)’ before ‘&’ token
     explicit inline normalized_view(range & r)
                                           ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:44: error: ‘closeable’ was not declared in this scope
     typedef typename boost::range_iterator<closeable>::type iterator;
                                            ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:44: note: suggested alternative: ‘fcloseall’
     typedef typename boost::range_iterator<closeable>::type iterator;
                                            ^~~~~~~~~
                                            fcloseall
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:91:53: error: template argument 1 is invalid
     typedef typename boost::range_iterator<closeable>::type iterator;
                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:50: error: ‘closeable’ was not declared in this scope
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                  ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:50: note: suggested alternative: ‘fcloseall’
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                  ^~~~~~~~~
                                                  fcloseall
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:92:59: error: template argument 1 is invalid
     typedef typename boost::range_const_iterator<closeable>::type const_iterator;
                                                           ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:101:5: error: ‘reversible_type’ does not name a type; did you mean ‘reversible_view’?
     reversible_type m_reversible;
     ^~~~~~~~~~~~~~~
     reversible_view
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::const_iterator boost::geometry::detail::normalized_view<Geometry>::begin() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74: error: no matching function for call to ‘begin(const closeable_type&)’
     inline const_iterator begin() const { return boost::begin(m_closeable); }
                                                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:94:74:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::const_iterator boost::geometry::detail::normalized_view<Geometry>::end() const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70: error: no matching function for call to ‘end(const closeable_type&)’
     inline const_iterator end() const { return boost::end(m_closeable); }
                                                                      ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:95:70:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::iterator boost::geometry::detail::normalized_view<Geometry>::begin()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62: error: no matching function for call to ‘begin(boost::geometry::detail::normalized_view<Geometry>::closeable_type&)’
     inline iterator begin() { return boost::begin(m_closeable); }
                                                              ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:97:62:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/point_in_geometry.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/point_to_geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/centroid_weighted_length.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp: In member function ‘boost::geometry::detail::normalized_view<Geometry>::iterator boost::geometry::detail::normalized_view<Geometry>::end()’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58: error: no matching function for call to ‘end(boost::geometry::detail::normalized_view<Geometry>::closeable_type&)’
     inline iterator end() { return boost::end(m_closeable); }
                                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/normalized_view.hpp:98:58:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:61:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:268:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:277:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:76:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::projected_point’
 class projected_point
       ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_projected_point.hpp:278:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian/distance_segment_box.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp: In static member function ‘static boost::geometry::detail::distance::segment_to_box<Segment, Box, 2, SBStrategy>::return_type boost::geometry::detail::distance::segment_to_box<Segment, Box, 2, SBStrategy>::apply(const Segment&, const Box&, const SBStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:772:26: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
             typedef std::conditional_t
                          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:790:21: error: ‘point_box_strategy_type’ was not declared in this scope
                     point_box_strategy_type
                     ^~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:790:21: note: suggested alternative: ‘point_to_range’
                     point_box_strategy_type
                     ^~~~~~~~~~~~~~~~~~~~~~~
                     point_to_range
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:791:17: error: template argument 3 is invalid
                 >::apply(p[0], box, point_box_strategy_type());
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/segment_to_box.hpp:791:17: error: template argument 6 is invalid
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:78:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:812:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:821:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:531:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track’
 class cross_track
       ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track.hpp:822:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:79:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:299:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:452:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:462:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:274:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track_box_box’
 class cross_track_box_box
       ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_box_box.hpp:463:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:80:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:226:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:376:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:386:17: error: wrong number of template arguments (4, should be at least 0)
                 >
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:203:7: note: provided for ‘template<class CalculationType, class Strategy> class boost::geometry::strategy::distance::cross_track_point_box’
 class cross_track_point_box
       ^~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_cross_track_point_box.hpp:387:9: error: expected unqualified-id before ‘>’ token
         > type;
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:81:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp: In static member function ‘static ReturnType boost::geometry::strategy::distance::generic_segment_box::segment_below_of_box(const SegmentPoint&, const SegmentPoint&, const BoxPoint&, const BoxPoint&, const BoxPoint&, const BoxPoint&, const SegmentBoxStrategy&, const AzimuthStrategy&, const EnvelopeSegmentStrategy&, const NormalizePointStrategy&, const DisjointPointBoxStrategy&, const DisjointBoxBoxStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:66:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:81:63: error: type/value mismatch at argument 1 in template parameter list for ‘template<class CS_Tag> struct boost::geometry::detail::disjoint::disjoint_segment_box_sphere_or_spheroid’
                 disjoint_segment_box_sphere_or_spheroid<cs_tag>
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:81:63: note:   expected a type, got ‘cs_tag’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:83:26: error: ‘disjoint_sb’ is not a class, namespace, or enumeration
         typedef typename disjoint_sb::disjoint_info disjoint_info_type;
                          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:99:46: error: ‘disjoint_sb’ is not a class, namespace, or enumeration
         disjoint_info_type disjoint_result = disjoint_sb::
                                              ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:103:32: error: ‘disjoint_info_type’ is not a class, namespace, or enumeration
         if (disjoint_result == disjoint_info_type::intersect) //intersect
                                ^~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:108:32: error: ‘disjoint_info_type’ is not a class, namespace, or enumeration
         if (disjoint_result == disjoint_info_type::disjoint_no_vertex)
                                ^~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:141:21: error: type/value mismatch at argument 2 in template parameter list for ‘template<class CT, class CS_Tag> class boost::geometry::formula::vertex_longitude’
                     >::apply(lon1, lat1, lon2, lat2,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/distance_segment_box.hpp:141:21: note:   expected a type, got ‘cs_tag’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:82:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:140:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t<same_units_type::value, units1_type, geometry::radian> units_type;
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::detail::spherical_longitude<ComparePolicy, Point1, Point2, DimensionCount>::are_both_at_antimeridian(const coordinate1_type&, const coordinate2_type&, bool&, bool&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:153:54: error: ‘units_type’ was not declared in this scope
         is_left_at = math::is_longitude_antimeridian<units_type>(l0);
                                                      ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:153:54: note: suggested alternative: ‘units1_type’
         is_left_at = math::is_longitude_antimeridian<units_type>(l0);
                                                      ^~~~~~~~~~
                                                      units1_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::detail::spherical_longitude<ComparePolicy, Point1, Point2, DimensionCount>::apply(const Point1&, const Point2&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:175:43: error: ‘units_type’ was not declared in this scope
                 && math::is_latitude_pole<units_type, is_equatorial>(l1)))
                                           ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:175:43: note: suggested alternative: ‘units1_type’
                 && math::is_latitude_pole<units_type, is_equatorial>(l1)))
                                           ^~~~~~~~~~
                                           units1_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp: In static member function ‘static bool boost::geometry::strategy::compare::spherical<ComparePolicy, -1>::apply(const Point1&, const Point2&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:236:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:241:21: error: wrong number of template arguments (6, should be 4)
                     >::value
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:133:8: note: provided for ‘template<class ComparePolicy, class Point1, class Point2, long unsigned int DimensionCount> struct boost::geometry::strategy::compare::detail::spherical_longitude’
 struct spherical_longitude
        ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:242:16: error: ‘::apply’ has not been declared
             >::apply(left, right);
                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical/compare.hpp:242:16: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:90:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp: In member function ‘void boost::geometry::strategy::azimuth::geographic<FormulaPolicy, Spheroid, CalculationType>::compute(const T&, const T&, const T&, const T&, T&, T&) const’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:94:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:101:17: error: ‘calc_t’ was not declared in this scope
                 calc_t,
                 ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/azimuth.hpp:101:17: note: suggested alternative: ‘call_R’
                 calc_t,
                 ^~~~~~
                 call_R
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/intersection.hpp:41:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic/distance_cross_track.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:96,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:83:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:91:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_a2;  // squared equatorial radius
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:92:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_e2;  // squared eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:93:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_ep2; // squared second eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:94:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_ep;  // second eccentricity
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:95:9: error: ‘calc_t’ does not name a type; did you mean ‘call_R’?
         calc_t const m_c2;  // squared authalic radius
         ^~~~~~
         call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp: In constructor ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants::spheroid_constants(const Spheroid&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:99:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_a2’
             , m_a2(math::sqr(get_radius<0>(spheroid)))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_e2’
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:46: error: ‘calc_t’ was not declared in this scope
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
                                              ^~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:100:46: note: suggested alternative: ‘call_R’
             , m_e2(formula::eccentricity_sqr<calc_t>(spheroid))
                                              ^~~~~~
                                              call_R
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_ep2’
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:21: error: ‘m_e2’ was not declared in this scope
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:101:21: note: suggested alternative: ‘._92’
             , m_ep2(m_e2 / (calc_t(1.0) - m_e2))
                     ^~~~
                     ._92
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_ep’
             , m_ep(math::sqrt(m_ep2))
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:31: error: ‘m_ep2’ was not declared in this scope
             , m_ep(math::sqrt(m_ep2))
                               ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:102:31: note: suggested alternative: ‘__exp2’
             , m_ep(math::sqrt(m_ep2))
                               ^~~~~
                               __exp2
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:103:15: error: class ‘boost::geometry::strategy::area::geographic<FormulaPolicy, SeriesOrder, Spheroid, CalculationType>::spheroid_constants’ does not have any field named ‘m_c2’
             , m_c2(formula_dispatch::authalic_radius_sqr
               ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:21: error: type/value mismatch at argument 1 in template parameter list for ‘template<class ResultType, class Geometry, class Tag> struct boost::geometry::formula_dispatch::authalic_radius_sqr’
                     >::apply(m_a2, m_e2))
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:21: note:   expected a type, got ‘calc_t’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:30: error: ‘m_a2’ was not declared in this scope
                     >::apply(m_a2, m_e2))
                              ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategy/geographic/area.hpp:106:30: note: suggested alternative: ‘._92’
                     >::apply(m_a2, m_e2))
                              ^~~~
                              ._92
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:30:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘bool boost::geometry::detail::any_range_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:245:21: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
                 [&](auto&& range)
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘bool boost::geometry::detail::none_range_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:258:21: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
                 [&](auto&& range)
                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp: In function ‘Functor boost::geometry::detail::for_each_range(const Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/for_each_range.hpp:271:13: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
         [&](auto&& range)
             ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In function ‘void boost::geometry::strategy::convex_hull::detail::get_extremes(const Geometry&, Point&, Point&, const Less&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:57:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     geometry::detail::for_each_range(geometry, [&](auto const& range)
                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In lambda function:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42: error: no matching function for call to ‘begin(const int&)’
         auto left_it = boost::begin(range);
                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:70:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43: error: no matching function for call to ‘begin(const int&)’
         auto right_it = boost::begin(range);
                                           ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:71:43:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44: error: no matching function for call to ‘begin(const int&)’
         for (auto it = ++boost::begin(range); it != boost::end(range); ++it)
                                            ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69: error: no matching function for call to ‘end(const int&)’
         for (auto it = ++boost::begin(range); it != boost::end(range); ++it)
                                                                     ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:73:69:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In function ‘void boost::geometry::strategy::convex_hull::detail::assign_ranges(const Geometry&, const Point&, const Point&, Container&, Container&, const SideStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:124:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     geometry::detail::for_each_range(geometry, [&](auto const& range)
                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp: In lambda function:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42: error: no matching function for call to ‘begin(const int&)’
         for (auto it = boost::begin(range); it != boost::end(range); ++it)
                                          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:18:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type begin( T& r )
                                                       ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::begin(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:98:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type begin( const T& r )
                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::begin(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:42:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/begin.hpp:110:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:115:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67: error: no matching function for call to ‘end(const int&)’
         for (auto it = boost::begin(range); it != boost::end(range); ++it)
                                                                   ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/functions.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/iterator_range_core.hpp:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/lexical_cast.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/tools/convert_from_string.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note: candidate: template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<T>::type end( T& r )
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<T>::type boost::range_adl_barrier::end(T&) [with T = const int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:92:55: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note: candidate: template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&)
 inline BOOST_DEDUCED_TYPENAME range_iterator<const T>::type end( const T& r )
                                                             ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: note:   template argument deduction/substitution failed:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp: In substitution of ‘template<class T> constexpr typename boost::range_iterator<const T>::type boost::range_adl_barrier::end(const T&) [with T = int]’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/agnostic/hull_graham_andrew.hpp:127:67:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/range/end.hpp:104:61: error: no type named ‘type’ in ‘struct boost::range_iterator<const int, void>’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:30:37: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     static auto area(Geometry const&)
                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:30:37: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:50:57: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::cartesian<CT> const&)
                                                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/cartesian.hpp:50:57: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:15:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:41:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:41:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:48:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:48:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:55:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:55:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:62:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:62:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:69:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:69:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:76:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:76:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:84:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:84:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:91:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:91:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:111:64: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_point const& )
                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:111:64: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:120:68: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_multipoint const&)
                                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:120:68: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:129:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_box const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:129:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:138:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian_segment<CT> const&)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:138:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:147:61: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::cartesian<CT> const&)
                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/cartesian.hpp:147:61: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:16:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:37:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:37:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:44:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:44:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:51:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:51:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:71:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_point const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:71:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:80:60: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_box const& )
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:80:60: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:89:63: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::cartesian_segment const&)
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/cartesian.hpp:89:63: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:158:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:33:37: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     static auto area(Geometry const&)
                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:33:37: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:42:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:42:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:49:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:49:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:56:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:56:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:63:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:63:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:70:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:70:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:79:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:79:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:86:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:86:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:93:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/cartesian.hpp:93:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:47:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:47:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:70:78: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::geographic<FP, SO, S, CT> const& strategy)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/geographic.hpp:70:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:21:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:47:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:47:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:54:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:54:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:61:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:61:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:68:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:68:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:75:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:75:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:82:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:82:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:90:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:90:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:97:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:97:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:129:64: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_point const& )
                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:129:64: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:138:68: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_multipoint const&)
                                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:138:68: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:147:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_box const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:147:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:156:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical_segment<CT> const&)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:156:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:165:61: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::spherical<CT> const&)
                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/spherical.hpp:165:61: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:15:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:51:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:51:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:58:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:58:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:65:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:65:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:72:77: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:72:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:82:83: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_polysegmental_t<Geometry> * = nullptr) const
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:82:83: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:92:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:92:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:100:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:100:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:107:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:107:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:130:79: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::geographic_segment<FP, S, CT> const& s)
                                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:130:79: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:139:71: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::envelope::geographic<FP, S, CT> const& s)
                                                                       ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/envelope/geographic.hpp:139:71: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:42:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:42:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:49:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:49:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:56:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:56:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:88:62: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_point const& )
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:88:62: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:97:60: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_box const& )
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:97:60: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:106:67: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::spherical_segment<CT> const&)
                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/spherical.hpp:106:67: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:16:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:49:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:49:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:56:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:56:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:63:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:63:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:86:77: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::expand::geographic_segment<FP, S, CT> const& s)
                                                                             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/expand/geographic.hpp:86:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:159:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:50:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:50:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:62:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:62:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:69:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:69:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:76:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:76:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:83:77: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                             ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:83:77: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:93:83: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                   typename util::enable_if_polysegmental_t<Geometry> * = nullptr) const
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:93:83: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:105:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:105:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:112:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:112:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:119:75: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                 typename util::enable_if_segment_t<Geometry> * = nullptr) const
                                                                           ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/geographic.hpp:119:75: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:160,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:46:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:46:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:81:69: error: ‘get’ function uses ‘auto’ type specifier without trailing return type
     static auto get(strategy::area::spherical<R, CT> const& strategy)
                                                                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/area/spherical.hpp:81:69: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:160:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:49:32: error: ‘area’ function uses ‘auto’ type specifier without trailing return type
     auto area(Geometry const&) const
                                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:49:32: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:61:80: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:61:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:68:86: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_multi_point_t<Geometry> * = nullptr)
                                                                                      ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:68:86: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:75:78: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:75:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:82:82: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:82:82: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:89:88: error: ‘envelope’ function uses ‘auto’ type specifier without trailing return type
                          typename util::enable_if_polysegmental_t<Geometry> * = nullptr)
                                                                                        ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:89:88: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:98:78: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_point_t<Geometry> * = nullptr)
                                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:98:78: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:105:76: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_box_t<Geometry> * = nullptr)
                                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:105:76: note: deduced return type only available with -std=c++14 or -std=gnu++14
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:112:80: error: ‘expand’ function uses ‘auto’ type specifier without trailing return type
                        typename util::enable_if_segment_t<Geometry> * = nullptr)
                                                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/spherical.hpp:112:80: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:61:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/area.hpp:246:73: error: ‘apply’ function uses ‘auto’ type specifier without trailing return type
     static auto apply(Geometry const& geometry, Strategy const& strategy)
                                                                         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/area.hpp:246:73: note: deduced return type only available with -std=c++14 or -std=gnu++14
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp: In static member function ‘static int boost::geometry::detail::direction_code_impl<boost::geometry::spherical_tag>::apply(Point1, Point1, Point2)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:230:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:239:21: error: wrong number of template arguments (3, should be 1)
                     >
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:39:8: note: provided for ‘template<class CSTag> struct boost::geometry::detail::direction_code_impl’
 struct direction_code_impl
        ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:240:16: error: ‘::apply’ has not been declared
             >::apply(segment_a, segment_b, p);
                ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/direction_code.hpp:240:16: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:37: error: ‘integer_sequence’ is not a member of ‘std’
 struct static_check_characters<std::integer_sequence<char, C, Cs...>>
                                     ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:37: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:623:68: error: template argument 1 is invalid
 struct static_check_characters<std::integer_sequence<char, C, Cs...>>
                                                                    ^~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:36: error: ‘integer_sequence’ is not a member of ‘std’
     : static_check_characters<std::integer_sequence<char, Cs...>>
                                    ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:36: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:624:64: error: template argument 1 is invalid
     : static_check_characters<std::integer_sequence<char, Cs...>>
                                                                ^~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:201:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:201:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:239:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:239:9: error: expected ‘{’ before ‘<’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:26: error: ‘index_sequence’ is not a member of ‘std’
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:26: error: ‘index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:43: error: expected parameter pack before ‘...’
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                                           ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:356:46: error: wrong number of template arguments (1, should be 3)
 struct push_back_st<std::index_sequence<Is...>, std::tuple<Ts...>, T>
                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:353:8: note: provided for ‘template<class Is, class Tuple, class T> struct boost::geometry::tuples::push_back_st’
 struct push_back_st;
        ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:18: error: ‘make_index_sequence’ is not a member of ‘std’
             std::make_index_sequence<sizeof...(Ts)>,
                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:18: error: ‘make_index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:380:51: error: wrong number of template arguments (1, should be 3)
             std::make_index_sequence<sizeof...(Ts)>,
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:353:8: note: provided for ‘template<class Is, class Tuple, class T> struct boost::geometry::tuples::push_back_st’
 struct push_back_st;
        ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/tuples.hpp:383:9: error: expected ‘{’ before ‘>’ token
         >
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:145:18: error: ‘integer_sequence’ is not a member of ‘std’
             std::integer_sequence
                  ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:145:18: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:148:17: error: wrong number of template arguments (1, should be at least 2)
                 >,
                 ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:19:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/result.hpp:641:8: note: provided for ‘template<class Seq, long unsigned int Height, long unsigned int Width> struct boost::geometry::detail::relate::static_mask’
 struct static_mask
        ^~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/interface.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/interface.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:149:13: error: expected class-name before numeric constant
             3, 3
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/de9im.hpp:149:13: error: expected ‘{’ before numeric constant
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlaps/interface.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/relate_impl.hpp:38:9: error: expected template-name before ‘<’ token
         <
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/relate_impl.hpp:38:9: error: expected ‘{’ before ‘<’ token
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:27:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:88:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:109:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<size_t, MaxElements, MinElements>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: template argument 2 is invalid
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: note:   expected a type, got ‘MaxElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: error: type/value mismatch at argument 2 in template parameter list for ‘template<bool Check, class ... Ts> struct boost::geometry::detail::static_assert_check’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/parameters.hpp:140:63: note:   expected a type, got ‘MinElements’
         std::integer_sequence<size_t, MaxElements, MinElements>);
                                                               ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:591:52: error: template argument 2 is invalid
         std::integer_sequence<unsigned, First, Last>);
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:14: error: ‘integer_sequence’ is not a member of ‘std’
         std::integer_sequence<unsigned, First, Last>);
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/predicates.hpp:609:52: error: template argument 2 is invalid
         std::integer_sequence<unsigned, First, Last>);
                                                    ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:69: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                     ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: error: ‘::value’ has not been declared
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/static_assert.hpp:24:83: note: in definition of macro ‘BOOST_GEOMETRY_STATIC_ASSERT’
 static_assert(boost::geometry::detail::static_assert_check<(CHECK), __VA_ARGS__>::value, MESSAGE)
                                                                                   ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/comparable_distance_far.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/distance_predicates.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/distance_predicates.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:59,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:26:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<std::is_integral<T>::value, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:26:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<std::is_integral<T>::value, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:36:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! std::is_integral<T>::value, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:36:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! std::is_integral<T>::value, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:38:10: error: redefinition of ‘template<class T, <typeprefixerror><anonymous> > T boost::geometry::index::detail::diff_abs(const T&, const T&)’
 inline T diff_abs(T const& v1, T const& v2)
          ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/algorithms/diff_abs.hpp:28:10: note: ‘template<class T, <typeprefixerror><anonymous> > T boost::geometry::index::detail::diff_abs(const T&, const T&)’ previously declared here
 inline T diff_abs(T const& v1, T const& v2)
          ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:62:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:54:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:64:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class T, class Value, class Indexable, class ResultType, int Ver> struct boost::geometry::index::detail::convertible_type_impl’
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:64:9: note:   expected a type, got ‘result_type’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:70:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:81:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:96:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class T, class Value, class Indexable, class ResultType, int Ver> struct boost::geometry::index::detail::convertible_type_impl’
         >::type type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/meta.hpp:96:9: note:   expected a type, got ‘result_type’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:117:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:120:25: error: wrong number of template arguments (1, should be 2)
                         >,
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:994:12: note: provided for ‘template<class, class> struct std::is_same’
     struct is_same;
            ^~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:121:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:124:25: error: wrong number of template arguments (3, should be 2)
                         >
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:69:12: note: provided for ‘template<class _Tp, _Tp __v> struct std::integral_constant’
     struct integral_constant
            ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:125:17: error: expected ‘{’ before ‘>’ token
                 >::value
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:146:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:149:25: error: wrong number of template arguments (1, should be 2)
                         >,
                         ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:994:12: note: provided for ‘template<class, class> struct std::is_same’
     struct is_same;
            ^~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: error: ‘remove_const_t’ is not a member of ‘std’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:26: note: suggested alternative: ‘remove_const’
                     std::remove_const_t<V>
                          ^~~~~~~~~~~~~~
                          remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:150:42: error: wrong number of template arguments (3, should be 2)
                     std::remove_const_t<V>
                                          ^
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/move.h:54:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/stl_pair.h:59,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/utility:70,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/unordered_map:38,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/platform/compiler.h:153,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/r/headers.h:67,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/type_traits:69:12: note: provided for ‘template<class _Tp, _Tp __v> struct std::integral_constant’
     struct integral_constant
            ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:45:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:151:17: error: expected ‘{’ before ‘>’ token
                 >::value
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: error: ‘remove_const_t’ is not a member of ‘std’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: note: suggested alternative: ‘remove_const’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
                                            remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: error: ‘remove_const_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:44: note: suggested alternative: ‘remove_const’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                            ^~~~~~~~~~~~~~
                                            remove_const
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:60: error: template argument 1 is invalid
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                            ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:62: error: template argument 2 is invalid
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray_detail.hpp:372:65: error: expected ‘{’ before ‘value’
             ::boost::has_nothrow_move<std::remove_const_t<T> >::value
                                                                 ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp: In member function ‘void boost::geometry::index::detail::varray<Value, Capacity>::swap_dispatch(boost::geometry::index::detail::varray<typename boost::geometry::index::detail::varray_detail::varray_traits<Value, Capacity>::value_type, C>&, std::true_type)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1565:22: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
         typedef std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1572:9: error: ‘storage_type’ was not declared in this scope
         storage_type temp;
         ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1572:9: note: suggested alternative:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/traits/traits.h:52:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:148,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/Rcpp/traits/storage_type.h:35:28: note:   ‘Rcpp::traits::storage_type’
 template<int RTYPE> struct storage_type{
                            ^~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/node/node.hpp:24:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:64,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1573:53: error: ‘temp’ was not declared in this scope
         Value * temp_ptr = reinterpret_cast<Value*>(temp.address());
                                                     ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/varray.hpp:1573:53: note: suggested alternative: ‘tfm’
         Value * temp_ptr = reinterpret_cast<Value*>(temp.address());
                                                     ^~~~
                                                     tfm
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/linear.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:78,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:91:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:109:30: error: ‘separation_type’ has not been declared
                              separation_type & separation,
                              ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp: In static member function ‘static void boost::geometry::index::detail::rtree::linear::find_greatest_normalized_separation<Elements, Parameters, Translator, Tag, DimensionIndex>::apply(const Elements&, const Parameters&, const Translator&, int&, size_t&, size_t&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:170:33: error: ‘separation_type’ was not declared in this scope
         separation = difference<separation_type>(lowest_high, highest_low);
                                 ^~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/linear/redistribute_elements.hpp:170:33: note: suggested alternative: ‘fraction_type’
         separation = difference<separation_type>(lowest_high, highest_low);
                                 ^~~~~~~~~~~~~~~
                                 fraction_type
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/scoped_ptr.hpp:13:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/detail/rtree/query_iterators.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:90,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/smart_ptr/scoped_ptr.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/smart_ptr/scoped_ptr.hpp:74:31: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
     explicit scoped_ptr( std::auto_ptr<T> p ) BOOST_SP_NOEXCEPT : px( p.release() )
                               ^~~~~~~~
In file included from /opt/rh/devtoolset-7/root/usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/locale:43,
                 from /opt/rh/devtoolset-7/root/usr/include/c++/7/iomanip:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include/RcppCommon.h:52,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:26,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/opt/rh/devtoolset-7/root/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/multi_point.hpp:35:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:1243:10: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/index/rtree.hpp:1310:10: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     std::conditional_t
          ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:27:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:82:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:40: error: ‘sub_type’ was not declared in this scope
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                        ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:40: note: suggested alternative: ‘true_type’
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                        ^~~~~~~~
                                        true_type
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 1 is invalid
     typedef detail_dispatch::sub_range<sub_type> sub_sub_range;
                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:89:48: error: template argument 3 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:92:22: error: ‘sub_sub_range’ is not a class, namespace, or enumeration
     typedef typename sub_sub_range::return_type return_type;
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp: In static member function ‘static boost::geometry::detail_dispatch::sub_range<Geometry, Tag, true>::return_type boost::geometry::detail_dispatch::sub_range<Geometry, Tag, true>::apply(Geometry&, const Id&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sub_range.hpp:100:16: error: ‘sub_sub_range’ is not a class, namespace, or enumeration
         return sub_sub_range::apply(range::at(geometry, mi), id);
                ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp: In function ‘void boost::geometry::sectionalize(const Geometry&, const RobustPolicy&, Sections&, int, std::size_t)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1076:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:17: error: type/value mismatch at argument 1 in template parameter list for ‘template<class Tag, class CSTag, class CalculationType> struct boost::geometry::strategy::expand::services::default_strategy’
                 >,
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:17: note:   expected a type, got ‘(<expression error> < std::is_same<typename boost::geometry::tag<Geometry>::type, boost::geometry::box_tag>::value)’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:18: error: expected identifier before ‘,’ token
                 >,
                  ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1081:18: error: expected unqualified-id before ‘,’ token
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1082:13: error: expected unqualified-id before ‘typename’
             typename cs_tag<Geometry>::type
             ^~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:1090:11: error: there are no arguments to ‘expand_strategy_type’ that depend on a template parameter, so a declaration of ‘expand_strategy_type’ must be available [-fpermissive]
           expand_strategy_type(),
           ^~~~~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/ever_circling_iterator.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:57,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: error: ‘conditional_t’ is not a member of ‘std’
         std::conditional_t
              ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: note: suggested alternative: ‘conditional’
         std::conditional_t
              ^~~~~~~~~~~~~
              conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:42:14: note: suggested alternative: ‘conditional’
         std::conditional_t
              ^~~~~~~~~~~~~
              conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:51:9: error: type/value mismatch at argument 4 in template parameter list for ‘template<class Derived, class Base, class Value, class Traversal, class Reference, class Difference> class boost::iterators::iterator_adaptor’
         >
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:51:9: note:   expected a type, got ‘(<expression error> < std::is_convertible<typename boost::iterators::iterator_traversal<Base>::type, boost::iterators::random_access_traversal_tag>::value)’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/iterators/base.hpp:52:5: error: expected ‘{’ before ‘>’ token
     >
     ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp: In static member function ‘static void boost::geometry::detail::get_turns::get_turns_generic<Geometry1, Geometry2, Reverse1, Reverse2, TurnPolicy>::apply(int, const Geometry1&, int, const Geometry2&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:557:22: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
         typedef std::integer_sequence<std::size_t, 0, 1> dimensions;
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:564:42: error: ‘dimensions’ was not declared in this scope
         geometry::sectionalize<Reverse1, dimensions>(geometry1, robust_policy,
                                          ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:564:42: note: suggested alternative: ‘dimension’
         geometry::sectionalize<Reverse1, dimensions>(geometry1, robust_policy,
                                          ^~~~~~~~~~
                                          dimension
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp: In function ‘void boost::geometry::get_turns(const Geometry1&, const Geometry2&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1160:10: error: ‘conditional_t’ is not a member of ‘std’
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1160:10: note: suggested alternative: ‘conditional’
     std::conditional_t
          ^~~~~~~~~~~~~
          conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1170:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:9: error: expected primary-expression before ‘>’ token
         >::apply(0, geometry1,
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:12: error: ‘::apply’ has not been declared
         >::apply(0, geometry1,
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:1179:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/has_self_intersections.hpp:26:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/backtrack_check_si.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_policies.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:40,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp: In static member function ‘static bool boost::geometry::detail::self_get_turn_points::get_turns<Reverse, TurnPolicy>::apply(const Geometry&, const IntersectionStrategy&, const RobustPolicy&, Turns&, InterruptPolicy&, int, bool)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:152:22: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
         typedef std::integer_sequence<std::size_t, 0, 1> dimensions;
                      ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:155:41: error: ‘dimensions’ was not declared in this scope
         geometry::sectionalize<Reverse, dimensions>(geometry, robust_policy, sec,
                                         ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/self_turn_points.hpp:155:41: note: suggested alternative: ‘dimension’
         geometry::sectionalize<Reverse, dimensions>(geometry, robust_policy, sec,
                                         ^~~~~~~~~~
                                         dimension
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:33:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersects/implementation.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/intersects.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/linear_or_areal_to_areal.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/implementation.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/comparable_distance/implementation.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/comparable_distance.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/piece_border.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::any_point_of(Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:526:70: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return ! dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                                      ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::any_segment_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:538:78: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return ! dispatch::for_each_segment<Geometry const>::apply(geometry, [&](auto&& s)
                                                                              ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::none_point_of(Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:549:68: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                                    ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘bool boost::geometry::none_segment_of(const Geometry&, UnaryPredicate)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:561:76: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return dispatch::for_each_segment<Geometry const>::apply(geometry, [&](auto&& s)
                                                                            ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘Functor boost::geometry::for_each_point(Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:587:61: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     dispatch::for_each_point<Geometry>::apply(geometry, [&](auto&& pt)
                                                             ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp: In function ‘Functor boost::geometry::for_each_segment(Geometry&, Functor)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/for_each.hpp:615:63: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     dispatch::for_each_segment<Geometry>::apply(geometry, [&](auto&& s)
                                                               ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/implementation.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersects/implementation.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/intersects.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/linear_or_areal_to_areal.hpp:18,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/distance/implementation.hpp:28,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/comparable_distance/implementation.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/comparable_distance.hpp:23,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/piece_border.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp: In function ‘bool boost::geometry::detail::disjoint::rings_containing(const Geometry1&, const Geometry2&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:67:58: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return geometry::detail::any_range_of(geometry2, [&](auto const& range)
                                                          ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp: In static member function ‘static bool boost::geometry::detail::disjoint::areal_box<Areal, Box>::apply(const Areal&, const Box&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/disjoint/areal_areal.hpp:121:52: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
         if (! geometry::all_segments_of(areal, [&](auto const& s)
                                                    ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp: In constructor ‘boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::original_ring::original_ring(const clockwise_ring_type&, bool, bool, const envelope_strategy_type&, const expand_strategy_type&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:248:26: error: ‘integer_sequence’ in namespace ‘std’ does not name a template type
             typedef std::integer_sequence<std::size_t, 0> dimensions;
                          ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:249:43: error: ‘dimensions’ was not declared in this scope
             geometry::sectionalize<false, dimensions>(m_ring,
                                           ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:249:43: note: suggested alternative: ‘dimension’
             geometry::sectionalize<false, dimensions>(m_ring,
                                           ^~~~~~~~~~
                                           dimension
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp: In member function ‘void boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::sectionalize(const boost::geometry::detail::buffer::buffered_piece_collection<Ring, IntersectionStrategy, DistanceStrategy, RobustPolicy>::piece&, const boost::geometry::detail::buffer::buffered_ring<Ring>&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:18: error: ‘integer_sequence’ is not a member of ‘std’
             std::integer_sequence<std::size_t, 0, 1> // x,y dimension
                  ^~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:18: error: ‘integer_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:861:52: error: wrong number of template arguments (4, should be 2)
             std::integer_sequence<std::size_t, 0, 1> // x,y dimension
                                                    ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_turns.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/turns.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/linear_linear.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/relate/implementation.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/relate.hpp:15,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/within/implementation.hpp:43,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/covered_by/implementation.hpp:25,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/covered_by.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:32,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/sections/sectionalize.hpp:389:8: note: provided for ‘template<class Point, class DimensionVector> struct boost::geometry::detail::sectionalize::sectionalize_part’
 struct sectionalize_part
        ^~~~~~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:29:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:862:9: error: expected unqualified-id before ‘>’ token
         > sectionalizer;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffered_piece_collection.hpp:869:9: error: ‘sectionalizer’ has not been declared
         sectionalizer::apply(monotonic_sections,
         ^~~~~~~~~~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/simplify.hpp:42:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/buffer/buffer_inserter.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/buffer.hpp:41,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:63,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp: In static member function ‘static void boost::geometry::concepts::SimplifyStrategy<Strategy, Point>::checker::apply(ApplyMethod)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:62:26: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
             typedef std::conditional_t
                          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:84:51: error: ‘base_index’ was not declared in this scope
             boost::ignore_unused<parameter_types, base_index>();
                                                   ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/concepts/simplify_concept.hpp:84:51: note: suggested alternative: ‘basename’
             boost::ignore_unused<parameter_types, base_index>();
                                                   ^~~~~~~~~~
                                                   basename
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/follow.hpp:33:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:38: error: ‘index_sequence’ is not a member of ‘std’
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                      ^~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:38: error: ‘index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:55: error: expected parameter pack before ‘...’
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                                       ^~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:236:58: error: wrong number of template arguments (1, should be 2)
 struct tupled_back_inserters_st<std::index_sequence<Is...>, std::tuple<Ts...> >
                                                          ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:233:8: note: provided for ‘template<class Is, class Tuple> struct boost::geometry::detail::tupled_back_inserters_st’
 struct tupled_back_inserters_st;
        ^~~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:18: error: ‘make_index_sequence’ is not a member of ‘std’
             std::make_index_sequence<sizeof...(Ts)>,
                  ^~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:18: error: ‘make_index_sequence’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:250:51: error: wrong number of template arguments (1, should be 2)
             std::make_index_sequence<sizeof...(Ts)>,
                                                   ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:233:8: note: provided for ‘template<class Is, class Tuple> struct boost::geometry::detail::tupled_back_inserters_st’
 struct tupled_back_inserters_st;
        ^~~~~~~~~~~~~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/tupled_output.hpp:252:9: error: expected ‘{’ before ‘>’ token
         >
         ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:32:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp: In function ‘void boost::geometry::get_intersection_points(const Geometry1&, const Geometry2&, const RobustPolicy&, Turns&, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:120:10: error: ‘conditional_t’ is not a member of ‘std’
     std::conditional_t
          ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:120:10: note: suggested alternative: ‘conditional’
     std::conditional_t
          ^~~~~~~~~~~~~
          conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:130:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:9: error: expected primary-expression before ‘>’ token
         >::apply(0, geometry1,
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:12: error: ‘::apply’ has not been declared
         >::apply(0, geometry1,
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/get_intersection_points.hpp:139:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view.hpp:14:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:53,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:278:18: error: ‘conditional_t’ in namespace ‘std’ does not name a template type
     typedef std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:36: error: ‘polygon_type’ was not declared in this scope
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                    ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:36: note: suggested alternative: ‘polygon_tag’
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                    ^~~~~~~~~~~~
                                    polygon_tag
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 1 is invalid
     typedef polygon_rings_iterator<polygon_type> inner_iterator_type;
                                                ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 2 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 3 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:285:48: error: template argument 4 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:289:49: error: ‘polygon_type’ has not been declared
         static inline inner_iterator_type apply(polygon_type& polygon)
                                                 ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:297:49: error: ‘polygon_type’ has not been declared
         static inline inner_iterator_type apply(polygon_type& polygon)
                                                 ^~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:307:65: error: ‘value_type’ in ‘struct std::iterator_traits<int>’ does not name a type
             typename std::iterator_traits<inner_iterator_type>::value_type,
                                                                 ^~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:310:65: error: ‘reference’ in ‘struct std::iterator_traits<int>’ does not name a type
             typename std::iterator_traits<inner_iterator_type>::reference
                                                                 ^~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:311:9: error: template argument 3 is invalid
         > rings_iterator_type;
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:311:9: error: template argument 6 is invalid
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp: In static member function ‘static void boost::geometry::detail::boundary_views::views_container_initializer<MultiPolygon, boost::geometry::multi_polygon_tag>::apply(const MultiPolygon&, BoundaryView*)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/views/detail/boundary_view/implementation.hpp:319:59: error: expression list treated as compound expression in initializer [-fpermissive]
                                   boost::end(multipolygon));
                                                           ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/interface.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: error: ‘conditional_t’ is not a member of ‘std’
             std::conditional_t
                  ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:940:18: note: suggested alternative: ‘conditional’
             std::conditional_t
                  ^~~~~~~~~~~~~
                  conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:945:17: error: template argument 4 is invalid
                 >,
                 ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:947:9: error: expected ‘{’ before ‘>’ token
         >
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp: In function ‘OutputIterator boost::geometry::detail::intersection::insert(const Geometry1&, const Geometry2&, RobustPolicy, OutputIterator, const Strategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1432:17: error: ‘conditional_t’ is not a member of ‘std’
     return std::conditional_t
                 ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1432:17: note: suggested alternative: ‘conditional’
     return std::conditional_t
                 ^~~~~~~~~~~~~
                 conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1442:14: error: expected primary-expression before ‘,’ token
             >,
              ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:9: error: expected primary-expression before ‘>’ token
         >::apply(geometry1, geometry2, robust_policy, out, strategy);
         ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:12: error: ‘::apply’ has not been declared
         >::apply(geometry1, geometry2, robust_policy, out, strategy);
            ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/overlay/intersection_insert.hpp:1451:12: note: suggested alternatives:
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/include_preprocessed.hpp:37:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply_fwd.hpp:31,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/apply.hpp:22,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/iter_apply.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/find_if_pred.hpp:14,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find_if.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/find.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/contains_impl.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/contains.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/policies/policy.hpp:10,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/math/constants/constants.hpp:12,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/math.hpp:30,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/radian_access.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:51,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/mpl/aux_/preprocessed/gcc/apply_fwd.hpp:18:8: note:   ‘boost::mpl::apply’
 struct apply;
        ^~~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility_core.hpp:31:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/utility.hpp:29,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/detail/apply_visitor_unary.hpp:17,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/variant/apply_visitor.hpp:16,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/append.hpp:27,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_values.hpp:33,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/assign_indexed_point.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_points.hpp:20,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/policies/relate/intersection_policy.hpp:21,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/intersection_strategies.hpp:19,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/strategies/strategies.hpp:37,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:58,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
 struct apply
        ^~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/move/detail/meta_utils.hpp:47:8: note:   ‘boost::move_detail::apply’
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/difference.hpp:22:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:73,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp: At global scope:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:450:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:455:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:457:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:488:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:493:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:495:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:528:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:533:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:535:13: error: expected ‘{’ before ‘>’ token
             >
             ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: error: ‘conditional_t’ is not a member of ‘std’
                 std::conditional_t
                      ^~~~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: error: ‘conditional_t’ is not a member of ‘std’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:565:22: note: suggested alternative: ‘conditional’
                 std::conditional_t
                      ^~~~~~~~~~~~~
                      conditional
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:570:21: error: template argument 4 is invalid
                     >,
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/intersection/multi.hpp:572:13: error: expected ‘{’ before ‘>’ token
             >
             ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:89:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:87:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:87:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:108:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:108:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:110:27: error: redefinition of ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > constexpr Geometry boost::geometry::make(const Type&, const Type&)’
 constexpr inline Geometry make(Type const& c1, Type const& c2)
                           ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:89:17: note: ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > Geometry boost::geometry::make(const Type&, const Type&)’ previously declared here
 inline Geometry make(Type const& c1, Type const& c2)
                 ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:143:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:143:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<! traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:163:10: error: ‘std::enable_if_t’ has not been declared
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
          ^~~~~~~~~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:163:21: error: expected ‘>’ before ‘<’ token
     std::enable_if_t<traits::make<Geometry>::is_specialized, int> = 0
                     ^
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:165:27: error: redefinition of ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > constexpr Geometry boost::geometry::make(const Type&, const Type&, const Type&)’
 constexpr inline Geometry make(Type const& c1, Type const& c2, Type const& c3)
                           ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/make.hpp:145:17: note: ‘template<class Geometry, class Type, <typeprefixerror><anonymous> > Geometry boost::geometry::make(const Type&, const Type&, const Type&)’ previously declared here
 inline Geometry make(Type const& c1, Type const& c2, Type const& c3)
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/touches.hpp:25:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:102,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/touches/implementation.hpp: In function ‘bool boost::geometry::detail::touches::rings_containing(const FirstGeometry&, const SecondGeometry&, const IntersectionStrategy&)’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/touches/implementation.hpp:225:58: error: use of ‘auto’ in lambda parameter declaration only available with -std=c++14 or -std=gnu++14
     return geometry::detail::any_range_of(geometry2, [&](auto const& range)
                                                          ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/coordinate_type.hpp:94:17:   required from ‘struct boost::geometry::coordinate_type<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp:99:54:   required from ‘class boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/for_each_coordinate.hpp:67:5:   required from ‘class boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
LAS.cpp:582:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
         >::type type;
                 ^~~~
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/arithmetic/arithmetic.hpp:23:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:55,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp: In instantiation of ‘class boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Point<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/util/for_each_coordinate.hpp:67:5:   required from ‘class boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
LAS.cpp:582:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/point_concept.hpp:107:10: error: ‘value’ is not a member of ‘boost::geometry::dimension<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >’
     enum { ccount = dimension<Geometry>::value };
          ^
In file included from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/ring_type.hpp:28:0,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/closure.hpp:24,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometry.hpp:34,
                 from /c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry.hpp:17,
                 from LAS.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/point_type.hpp:158:17:   required from ‘struct boost::geometry::point_type<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/polygon_concept.hpp:55:52:   required from ‘class boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:32:62:   required by substitution of ‘template<class Model> boost::concepts::detail::yes boost::concepts::detail::has_constraints_(Model*, boost::concepts::detail::wrap_constraints<Model, (& Model:: constraints)>*) [with Model = boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:42:5:   required from ‘const bool boost::concepts::not_satisfied<boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >::value’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/has_constraints.hpp:45:51:   required from ‘struct boost::concepts::not_satisfied<boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/concept/detail/general.hpp:51:8:   required from ‘struct boost::concepts::requirement_<void (*)(boost::geometry::concepts::Polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >)>’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/multi_polygon.hpp:57:5:   required from ‘class boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
LAS.cpp:583:18:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
         >::type type;
                 ^~~~
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/io/wkt/read.hpp:907:70:   required from ‘void boost::geometry::read_wkt(const string&, Geometry&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; std::string = std::basic_string<char>]’
LAS.cpp:585:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:113:40:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:586:45:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<const boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:114:29:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:586:45:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp: In instantiation of ‘struct boost::geometry::tag<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’:
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:201:8:   required from ‘struct boost::geometry::concepts::detail::checker<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/geometries/concepts/check.hpp:228:31:   required from ‘constexpr void boost::geometry::concepts::check() [with Geometry = const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:113:40:   required from ‘static void boost::geometry::resolve_variant::envelope<Geometry>::apply(const Geometry&, Box&, const Strategy&) [with Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Strategy = boost::geometry::default_strategy; Geometry = boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/algorithms/detail/envelope/interface.hpp:197:47:   required from ‘void boost::geometry::envelope(const Geometry&, Box&) [with Geometry = boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >; Box = boost::geometry::model::box<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> >]’
LAS.cpp:618:44:   required from here
/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include/boost/geometry/core/tag.hpp:68:17: error: no type named ‘type’ in ‘struct boost::geometry::util::remove_cptrref<const boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::cartesian> > >’
make: *** [/software/c4/cbi/software/R-4.0.3/lib64/R/etc/Makeconf:181: LAS.o] Error 1
ERROR: compilation failed for package ‘lidR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/old/lidR.Rcheck/lidR’

```
# steps

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/steps
* Date/Publication: 2020-03-23 16:40:02 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "steps")` for more info

</details>

## In both

*   R CMD check timed out
    

