.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 195
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .locals 4
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 176
    iget-object v0, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rights"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 187
    .end local v0
    return-void

    .line 186
    .restart local v0
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 204
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 205
    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 217
    .end local v0
    return-void

    .line 215
    .restart local v0
    :cond_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "r":Lcom/sun/mail/imap/Rights;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;

    move-object v0, v1

    .line 319
    const/16 v1, 0x80

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 320
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v2, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 324
    :goto_0
    return-object v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .locals 2
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 246
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean v0, v0, v1

    return v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .locals 2
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 262
    .end local v0
    const/4 v0, 0x1

    return v0

    .line 258
    .restart local v0
    :cond_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 259
    const/4 v1, 0x0

    return v1

    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 271
    instance-of v0, p1, Lcom/sun/mail/imap/Rights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    return v1

    .line 274
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/Rights;

    .line 276
    .local v0, "rights":Lcom/sun/mail/imap/Rights;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 280
    .end local v2
    const/4 v1, 0x1

    return v1

    .line 277
    .restart local v2
    :cond_1
    iget-object v3, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v3, v3, v2

    iget-object v4, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 278
    return v1

    .line 276
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .locals 3

    .line 303
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 307
    .end local v1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights$Right;

    .line 308
    .local v1, "rights":[Lcom/sun/mail/imap/Rights$Right;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 309
    return-object v1

    .line 305
    .local v1, "i":I
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 306
    int-to-char v2, v1

    invoke-static {v2}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 304
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 293
    .end local v1
    return v0

    .line 291
    .restart local v1
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 225
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 226
    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 238
    .end local v0
    return-void

    .line 236
    .restart local v0
    :cond_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 332
    .end local v1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    .restart local v1
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 331
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
