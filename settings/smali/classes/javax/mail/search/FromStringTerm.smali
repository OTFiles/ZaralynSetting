.class public final Ljavax/mail/search/FromStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "FromStringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x5081bebf4a6fab34L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Ljavax/mail/search/FromStringTerm;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object v1

    .line 84
    .local v1, "from":[Ljavax/mail/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 87
    if-nez v1, :cond_0

    .line 88
    return v0

    .line 90
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 93
    .end local v2
    return v0

    .line 91
    .restart local v2
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
