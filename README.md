# iOS Restrictions Passcode
iOS Restrictions Passcode を解析する

## 使いかた
1. 何とかして RestrictionsPasswordKey と RestrictionsPasswordSalt を手に入れる
2. `passcode_hack.rb` を開き、`restrictions_password_key` と `restrictions_password_salt` の内容を変更する
3. `passcode_hack.rb` を実行する
4. `0000` から順番にチェックが始まり、パスコードが解析される

```
% ruby passcode_hack.rb
...
Check: 2995 -> LnicWq9HAQLHOtRgqp2JK8z5DOQ=
Check: 2996 -> l2YuHsSRrECOS+324k91UxTqncg=
Check: 2997 -> W2uv/SAtzUVfsOwmGxJ1w33N8ZE=
Check: 2998 -> c2kduzTwviSfzpSbXfEj6If/RW4=
Check: 2999 -> 3YhjINHpgopK+w2gCqwJ7nfQjAc=
Check: 3000 -> gMkBy34gXP3orZcUYgDHKSvhPKk=
Result: Passcode is 3000
```
