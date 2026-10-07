.class public Lmyjava/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;
.source "DataFlavor.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

.field public static final javaJVMLocalObjectMimeType:Ljava/lang/String; = "application/x-java-jvm-local-objectref"

.field public static final javaRemoteObjectMimeType:Ljava/lang/String; = "application/x-java-remote-object"

.field public static final javaSerializedObjectMimeType:Ljava/lang/String; = "application/x-java-serialized-object"

.field public static final plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

.field private static final serialVersionUID:J = 0x741da5db78a37333L

.field private static final sortedTextFlavors:[Ljava/lang/String;

.field public static final stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

.field private representationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 41
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    .line 42
    const-string v2, "Plain Text"

    .line 41
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 45
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    .line 46
    const-string v2, "Unicode String"

    .line 45
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 53
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    .line 54
    const-string v2, "application/x-java-file-list"

    .line 53
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 65
    nop

    .line 66
    const-string v3, "text/sgml"

    .line 67
    const-string v4, "text/xml"

    .line 68
    const-string v5, "text/html"

    .line 69
    const-string v6, "text/rtf"

    .line 70
    const-string v7, "text/enriched"

    .line 71
    const-string v8, "text/richtext"

    .line 72
    const-string v9, "text/uri-list"

    .line 73
    const-string v10, "text/tab-separated-values"

    .line 74
    const-string v11, "text/t140"

    .line 75
    const-string v12, "text/rfc822-headers"

    .line 76
    const-string v13, "text/parityfec"

    .line 77
    const-string v14, "text/directory"

    .line 78
    const-string v15, "text/css"

    .line 79
    const-string v16, "text/calendar"

    .line 80
    const-string v17, "application/x-java-serialized-object"

    .line 81
    const-string v18, "text/plain"

    .line 65
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 134
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    .local p1, "representationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "application"

    const-string v2, "x-java-serialized-object"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 141
    if-eqz p2, :cond_0

    .line 142
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_0
    const-string v0, "application/x-java-serialized-object"

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 147
    :goto_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 158
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v3, "class"

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "awt.16C"

    invoke-static {v3, v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 168
    return-void
.end method

.method private static fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 685
    .local p0, "availableFlavors":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 687
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 702
    .end local v1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1

    .line 688
    .restart local v1
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 690
    .local v2, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    invoke-virtual {v2}, Lmyjava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 691
    iget-object v3, v2, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 693
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 698
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v2
    goto :goto_0
.end method

.method private getCharset()Ljava/lang/String;
    .locals 2

    .line 199
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRedundant()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "charset":Ljava/lang/String;
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 205
    :cond_1
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 207
    :cond_2
    if-nez v0, :cond_3

    .line 208
    const-string v1, ""

    return-object v1

    .line 211
    :cond_3
    return-object v0

    .line 200
    .end local v0
    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 656
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 658
    .local v0, "sublist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    return-object v1

    .line 658
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 659
    .local v2, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    iget-object v3, v2, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .end local v2
    goto :goto_0
.end method

.method private static getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "charset"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 617
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 619
    .local v0, "sublist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    .end local v1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_1
    return-object v1

    .line 620
    .restart local v1
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 622
    .local v2, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v3, :cond_2

    .end local v2
    goto :goto_0

    .restart local v2
    :cond_2
    aget-object v5, p1, v4

    .line 624
    .local v5, "element":Ljava/lang/String;
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 625
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v5
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 629
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v2
    goto :goto_0
.end method

.method private getKeyInfo()Ljava/lang/String;
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 443
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final getTextPlainUnicodeFlavor()Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 91
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/plain; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "; class=java.io.InputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "Plain Text"

    .line 92
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 98
    :cond_0
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 176
    :try_start_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 182
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 183
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 188
    :goto_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 190
    const-string v0, "java.io.InputStream"

    .line 191
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    if-nez p3, :cond_2

    .line 194
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 193
    :goto_1
    iput-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 196
    return-void

    .line 177
    .end local v0
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16D"

    invoke-static {v2, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isByteCodeFlavor()Z
    .locals 2

    .line 714
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 714
    return v0
.end method

.method private isCharsetRedundant()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "type":Ljava/lang/String;
    const-string v1, "text/rtf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v1, "text/tab-separated-values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const-string v1, "text/t140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, "text/parityfec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 233
    return v1
.end method

.method private isCharsetRequired()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "type":Ljava/lang/String;
    const-string v1, "text/sgml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "text/enriched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v1, "text/richtext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const-string v1, "text/directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "text/css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v1, "text/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "application/x-java-serialized-object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 217
    return v1
.end method

.method private static isCharsetSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 126
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    const/4 v1, 0x0

    return v1
.end method

.method private isUnicodeFlavor()Z
    .locals 2

    .line 706
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 706
    return v0
.end method

.method private static selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 599
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 600
    .local v0, "charsets":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 602
    .local v1, "best":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_3

    .line 605
    .end local v2
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 607
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 613
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    return-object v2

    .line 607
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 608
    .local v2, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .end local v2
    goto :goto_1

    .line 603
    .local v2, "i":I
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v3}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .line 577
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const-string v0, "UTF-16"

    const-string v1, "UTF-8"

    const-string v2, "UTF-16BE"

    const-string v3, "UTF-16LE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 578
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 579
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v3}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 580
    if-nez v0, :cond_0

    .line 581
    const-string v3, "US-ASCII"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 582
    if-nez v0, :cond_0

    .line 583
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 588
    :cond_0
    if-eqz v0, :cond_2

    .line 589
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 592
    :cond_1
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v1

    return-object v1

    .line 595
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .line 554
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const-class v0, Ljava/io/Reader;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 555
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 558
    :cond_0
    const-class v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 562
    :cond_1
    const-class v2, Ljava/nio/CharBuffer;

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_2

    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 566
    :cond_2
    const-class v2, [C

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_3

    .line 568
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 571
    :cond_3
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v1

    return-object v1
.end method

.method private static selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .line 639
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 643
    :cond_0
    const-class v2, Ljava/nio/ByteBuffer;

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_1

    .line 645
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 647
    :cond_1
    const-class v2, [B

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_2

    .line 649
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1

    .line 652
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v1
.end method

.method public static final selectBestTextFlavor([Lmyjava/awt/datatransfer/DataFlavor;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 5
    .param p0, "availableFlavors"    # [Lmyjava/awt/datatransfer/DataFlavor;

    .line 529
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 530
    return-object v0

    .line 533
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    return-object v0

    .line 539
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 541
    .local v2, "bestSorted":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 542
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0

    .line 545
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 546
    invoke-static {v2}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    return-object v0

    .line 548
    :cond_3
    invoke-static {v2}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    return-object v0
.end method

.method private static sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;>;"
        }
    .end annotation

    .line 668
    .local p0, "availableFlavors":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 670
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;>;"
    sget-object v1, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 677
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 681
    :cond_0
    return-object v0

    .line 670
    :cond_1
    aget-object v4, v1, v3

    .line 671
    .local v4, "element":Ljava/lang/String;
    invoke-static {p0, v4}, Lmyjava/awt/datatransfer/DataFlavor;->fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 673
    .local v5, "subList":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    if-eqz v5, :cond_2

    .line 674
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 670
    .end local v4
    .end local v5
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static final tryToLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e0":Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 109
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 112
    .local v2, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 115
    :catch_2
    move-exception v3

    .line 119
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 357
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;-><init>()V

    .line 359
    .local v0, "clone":Lmyjava/awt/datatransfer/DataFlavor;
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 361
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 361
    check-cast v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    goto :goto_0

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 361
    :goto_0
    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 364
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 386
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    move-object v0, p1

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    return v0

    .line 387
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    if-nez p1, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 4
    .param p1, "that"    # Lmyjava/awt/datatransfer/DataFlavor;

    .line 393
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 394
    return v0

    .line 396
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 397
    return v1

    .line 399
    :cond_1
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v2, :cond_3

    .line 400
    iget-object v2, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v2, :cond_2

    return v0

    :cond_2
    return v1

    .line 402
    :cond_3
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 403
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 407
    :cond_4
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 411
    :cond_5
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "charset1":Ljava/lang/String;
    invoke-direct {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "charset2":Ljava/lang/String;
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 417
    :cond_6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 415
    :cond_7
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 408
    .end local v0
    .end local v1
    :cond_8
    :goto_1
    return v0

    .line 405
    :cond_9
    :goto_2
    return v1
.end method

.method public final getDefaultRepresentationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 278
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDefaultRepresentationClassAsString()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getDefaultRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeInfo()Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .locals 1

    .line 241
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "lowerName":Ljava/lang/String;
    const-string v1, "humanpresentablename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v1

    .line 262
    :cond_0
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReaderForText(Lmyjava/awt/datatransfer/Transferable;)Ljava/io/Reader;
    .locals 4
    .param p1, "transferable"    # Lmyjava/awt/datatransfer/Transferable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-interface {p1, p0}, Lmyjava/awt/datatransfer/Transferable;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_8

    .line 495
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 496
    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    .line 497
    .local v1, "reader":Ljava/io/Reader;
    invoke-virtual {v1}, Ljava/io/Reader;->reset()V

    .line 498
    return-object v1

    .line 499
    .end local v1
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 500
    new-instance v1, Ljava/io/StringReader;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 501
    :cond_1
    instance-of v1, v0, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    .line 502
    new-instance v1, Ljava/io/CharArrayReader;

    move-object v2, v0

    check-cast v2, Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v1

    .line 503
    :cond_2
    instance-of v1, v0, [C

    if-eqz v1, :cond_3

    .line 504
    new-instance v1, Ljava/io/CharArrayReader;

    move-object v2, v0

    check-cast v2, [C

    invoke-direct {v1, v2}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v1

    .line 506
    :cond_3
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "charset":Ljava/lang/String;
    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_4

    .line 510
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 511
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 512
    .end local v2
    :cond_4
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5

    .line 513
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v3, v0

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v2
    :goto_0
    goto :goto_1

    .line 514
    .end local v2
    :cond_5
    instance-of v2, v0, [B

    if-eqz v2, :cond_7

    .line 515
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v3, v0

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 518
    .restart local v2
    :goto_1
    nop

    .line 521
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 522
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v3

    .line 524
    :cond_6
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v3

    .line 518
    .end local v2
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "awt.16F"

    invoke-static {v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    .end local v1
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16E"

    invoke-static {v2}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 436
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getKeyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFlavorJavaFileListType()Z
    .locals 2

    .line 460
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 460
    return v0
.end method

.method public isFlavorRemoteObjectType()Z
    .locals 1

    .line 455
    const-string v0, "application/x-java-remote-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 455
    return v0
.end method

.method public isFlavorSerializedObjectType()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeSerializedObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 450
    return v0
.end method

.method public isFlavorTextType()Z
    .locals 3

    .line 465
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    const/4 v0, 0x0

    return v0

    .line 472
    :cond_1
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "charset":Ljava/lang/String;
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isByteCodeFlavor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 479
    :cond_2
    return v1

    .line 482
    :cond_3
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    return v1

    .line 466
    .end local v0
    :cond_4
    :goto_0
    return v1
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 334
    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public final isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 2
    .param p1, "dataFlavor"    # Lmyjava/awt/datatransfer/DataFlavor;

    .line 328
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v1, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0
.end method

.method public isMimeTypeSerializedObject()Z
    .locals 1

    .line 381
    const-string v0, "application/x-java-serialized-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassByteBuffer()Z
    .locals 2

    .line 308
    const-class v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassCharBuffer()Z
    .locals 2

    .line 304
    const-class v0, Ljava/nio/CharBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassInputStream()Z
    .locals 2

    .line 300
    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassReader()Z
    .locals 2

    .line 296
    const-class v0, Ljava/io/Reader;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassRemote()Z
    .locals 1

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public isRepresentationClassSerializable()Z
    .locals 2

    .line 286
    const-class v0, Ljava/io/Serializable;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public match(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 1
    .param p1, "that"    # Lmyjava/awt/datatransfer/DataFlavor;

    .line 431
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    return v0
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    return-object p2
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "is"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 349
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 351
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 353
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 347
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "humanPresentableName"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    const-string v1, "[MimeType=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ");humanPresentableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "os"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 343
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 340
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
