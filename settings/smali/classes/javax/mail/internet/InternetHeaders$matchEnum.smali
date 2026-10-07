.class Ljavax/mail/internet/InternetHeaders$matchEnum;
.super Ljava/lang/Object;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "matchEnum"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "v"    # Ljava/util/List;
    .param p2, "n"    # [Ljava/lang/String;
    .param p3, "m"    # Z
    .param p4, "l"    # Z

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    .line 172
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 174
    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 4

    .line 211
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 238
    return-object v1

    .line 212
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 215
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    if-nez v2, :cond_4

    .line 220
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1

    .line 223
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 235
    .end local v1
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-nez v1, :cond_0

    .line 236
    return-object v0

    .line 224
    .restart local v1
    :cond_5
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-eqz v2, :cond_0

    .line 226
    return-object v0

    .line 223
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 182
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 184
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .line 191
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 194
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 198
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 199
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-object v1

    .line 202
    :cond_1
    new-instance v1, Ljavax/mail/Header;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 195
    .end local v0
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more headers"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
