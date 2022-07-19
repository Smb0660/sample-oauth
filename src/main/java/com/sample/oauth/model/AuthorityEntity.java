package com.sample.oauth.model;

import com.sample.oauth.model.embed.AuthorityEmbed;
import org.hibernate.Hibernate;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Objects;


@Entity
@Table(name = "authorities")
public class AuthorityEntity {
    @EmbeddedId
    private AuthorityEmbed authorityEmbedId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        AuthorityEntity that = (AuthorityEntity) o;
        return authorityEmbedId != null && Objects.equals(authorityEmbedId, that.authorityEmbedId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(authorityEmbedId);
    }
}
