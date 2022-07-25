package com.sample.oauth.model.embed;

import com.sample.oauth.enums.Roles;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.io.Serializable;
import java.util.Objects;

import static com.sample.oauth.enums.Roles.ROLE_USER;

@Getter
@Setter
@ToString
@Embeddable
public class AuthorityEmbed implements Serializable {

    @Column(name = "username", nullable = false)
    private String username;

    @Column(name = "authority", nullable = false)
    @Enumerated(EnumType.STRING)
    private Roles authority = ROLE_USER;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AuthorityEmbed that = (AuthorityEmbed) o;
        return Objects.equals(username, that.username) && authority == that.authority;
    }

    @Override
    public int hashCode() {
        return Objects.hash(username, authority);
    }
}
