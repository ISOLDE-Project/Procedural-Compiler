//===--- AvoidCStyleCastsCheck.h - clang-tidy -------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_TOOLS_EXTRA_CLANG_TIDY_GOOGLE_AVOIDCSTYLECASTSCHECK_H
#define LLVM_CLANG_TOOLS_EXTRA_CLANG_TIDY_GOOGLE_AVOIDCSTYLECASTSCHECK_H

#include "../ClangTidyCheck.h"

namespace clang::tidy::google::readability {

/// Finds usages of C-style casts.
///
/// https://google.github.io/styleguide/cppguide.html#Casting
///
/// Corresponding cpplint.py check name: 'readability/casting'.
///
/// This check is similar to `-Wold-style-cast`, but it suggests automated fixes
/// in some cases. The reported locations should not be different from the
/// ones generated by `-Wold-style-cast`.
///
/// For the user-facing documentation see:
/// http://clang.llvm.org/extra/clang-tidy/checks/google/readability-casting.html
class AvoidCStyleCastsCheck : public ClangTidyCheck {
public:
  AvoidCStyleCastsCheck(StringRef Name, ClangTidyContext *Context)
      : ClangTidyCheck(Name, Context) {}
  void registerMatchers(ast_matchers::MatchFinder *Finder) override;
  void check(const ast_matchers::MatchFinder::MatchResult &Result) override;
  std::optional<TraversalKind> getCheckTraversalKind() const override {
    return TK_IgnoreUnlessSpelledInSource;
  }
};

} // namespace clang::tidy::google::readability

#endif // LLVM_CLANG_TOOLS_EXTRA_CLANG_TIDY_GOOGLE_AVOIDCSTYLECASTSCHECK_H