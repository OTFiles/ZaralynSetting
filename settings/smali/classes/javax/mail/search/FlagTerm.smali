.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .locals 0
    .param p1, "flags"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z

    .line 78
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 79
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 80
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 149
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/FlagTerm;

    .line 150
    .local v0, "ft":Ljavax/mail/search/FlagTerm;
    iget-boolean v2, v0, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v3, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v3, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1

    .line 87
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 157
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 106
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v1

    .line 107
    .local v1, "f":Ljavax/mail/Flags;
    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    return v3

    .line 111
    :cond_0
    return v0

    .line 118
    :cond_1
    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v2

    .line 121
    .local v2, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-lt v4, v5, :cond_4

    .line 127
    .end local v4
    iget-object v4, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v4}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "s":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_2

    .line 136
    .end local v5
    return v3

    .line 131
    .restart local v5
    :cond_2
    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    return v0

    .line 130
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    .end local v5
    .local v4, "i":I
    :cond_4
    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_5

    .line 124
    return v0

    .line 121
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v1
    .end local v2
    .end local v4
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
