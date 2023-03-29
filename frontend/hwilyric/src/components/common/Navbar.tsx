import { NavLink } from "react-router-dom"
import { useRecoilValue } from "recoil"

import { IsLoginAtom, userNicknameAtom }from "../../atoms/userAtom"

function Navbar() {
  const isLogin = useRecoilValue(IsLoginAtom)
  const nickname = useRecoilValue(userNicknameAtom)
  return (
    <nav>
      <div>
        <NavLink to="*">홈으로</NavLink>
      </div>
      <div>
        <NavLink to="/write">작사하기</NavLink>
      </div>
      <div>
        {isLogin ? (
          <NavLink to='/mypage'>{nickname}님</NavLink>
        ) : (
          <NavLink to="/login">로그인</NavLink>
        )}
      </div>
    </nav>
  )
}

export default Navbar