.class final Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
.super Ljava/lang/Object;
.source "MimeTypeProcessor.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyjava/awt/datatransfer/MimeTypeProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MimeType"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5ce4582f8fa3edecL


# instance fields
.field private parameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private systemParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    .line 193
    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    .line 194
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    .line 200
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    .line 201
    return-void
.end method

.method static synthetic access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;
    .locals 0

    .line 186
    iget-object p0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$1(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$4(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 227
    if-nez p2, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 234
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method addSystemParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 255
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    iget-object v2, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v0, "clone":Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    iget-object v1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    .line 257
    iget-object v1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    .line 258
    return-object v0
.end method

.method equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z
    .locals 2
    .param p1, "that"    # Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getFullType()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method getSubType()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method getSystemParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->systemParameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method
