.class public final Ljavax/mail/search/FromTerm;
.super Ljavax/mail/search/AddressTerm;
.source "FromTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x485e7192407c3469L


# direct methods
.method public constructor <init>(Ljavax/mail/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/mail/Address;

    .line 61
    invoke-direct {p0, p1}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Ljavax/mail/search/FromTerm;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 74
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object v1

    .line 76
    .local v1, "from":[Ljavax/mail/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 79
    if-nez v1, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 85
    .end local v2
    return v0

    .line 83
    .restart local v2
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
