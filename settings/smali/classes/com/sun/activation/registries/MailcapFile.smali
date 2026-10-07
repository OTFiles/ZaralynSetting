.class public Lcom/sun/activation/registries/MailcapFile;
.super Ljava/lang/Object;
.source "MailcapFile.java"


# static fields
.field private static addReverse:Z


# instance fields
.field private fallback_hash:Ljava/util/Map;

.field private native_commands:Ljava/util/Map;

.field private type_hash:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    .line 71
    :try_start_0
    const-string v0, "javax.activation.addreverse"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 46
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 113
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "new MailcapFile: default"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 104
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "new MailcapFile: InputStream"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "new_fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new MailcapFile: file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 88
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V

    .line 90
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 92
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 96
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    if-eqz v0, :cond_1

    .line 92
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 93
    :catch_1
    move-exception v2

    .line 95
    :cond_1
    :goto_1
    throw v1
.end method

.method private mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p1, "first"    # Ljava/util/Map;
    .param p2, "second"    # Ljava/util/Map;

    .line 216
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, "verb_enum":Ljava/util/Iterator;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 220
    .local v1, "clonedHash":Ljava/util/Map;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    return-object v1

    .line 221
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "verb":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 223
    .local v3, "cmdVector":Ljava/util/List;
    if-nez v3, :cond_1

    .line 224
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 228
    .local v4, "oldV":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 229
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2
    .end local v3
    .end local v4
    goto :goto_0
.end method

.method private parse(Ljava/io/Reader;)V
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v0, "buf_reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 262
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 264
    .local v2, "continued":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-nez v3, :cond_0

    .line 299
    return-void

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    .line 271
    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 273
    if-eqz v2, :cond_2

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 277
    :cond_3
    if-eqz v2, :cond_4

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 282
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V

    :try_end_1
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 283
    :catch_0
    move-exception v3

    .line 286
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 291
    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V

    :try_end_2
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 293
    :catch_1
    move-exception v3

    goto :goto_0

    .line 297
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method protected static reportParseError(IIIILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "otherExpectedToken"    # I
    .param p2, "anotherExpectedToken"    # I
    .param p3, "actualToken"    # I
    .param p4, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .line 533
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PARSE ERROR: Encountered a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") while expecting a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 540
    :cond_0
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IIILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "otherExpectedToken"    # I
    .param p2, "actualToken"    # I
    .param p3, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .line 523
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IILjava/lang/String;)V
    .locals 3
    .param p0, "expectedToken"    # I
    .param p1, "actualToken"    # I
    .param p2, "actualTokenValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;
        }
    .end annotation

    .line 514
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendToMailcap(Ljava/lang/String;)V
    .locals 2
    .param p1, "mail_cap"    # Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appendToMailcap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 250
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 254
    :goto_0
    return-void
.end method

.method public getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "mime_type"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "search_result":Ljava/util/Map;
    const/4 v1, 0x0

    .line 163
    .local v1, "wildcard_result":Ljava/util/Map;
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 166
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 167
    .local v2, "separator":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "subtype":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/util/Map;

    .line 172
    if-eqz v1, :cond_1

    .line 173
    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 174
    move-object v0, v5

    goto :goto_0

    .line 177
    :cond_0
    move-object v0, v1

    .line 180
    .end local v4
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMailcapList(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "mime_type"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "search_result":Ljava/util/Map;
    const/4 v1, 0x0

    .line 130
    .local v1, "wildcard_result":Ljava/util/Map;
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 133
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 134
    .local v2, "separator":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "subtype":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/util/Map;

    .line 139
    if-eqz v1, :cond_1

    .line 140
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 141
    move-object v0, v5

    goto :goto_0

    .line 144
    :cond_0
    move-object v0, v1

    .line 147
    .end local v4
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v0, "types":Ljava/util/Set;
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 191
    .local v1, "mts":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 192
    return-object v1
.end method

.method public getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "mime_type"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 201
    .local v0, "cmds":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 200
    nop

    .line 202
    .local v1, "v":Ljava/util/List;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 206
    :cond_0
    return-object v0
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 19
    .param p1, "mailcapEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/activation/registries/MailcapParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 309
    move-object/from16 v1, p1

    new-instance v2, Lcom/sun/activation/registries/MailcapTokenizer;

    invoke-direct {v2, v1}, Lcom/sun/activation/registries/MailcapTokenizer;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, "tokenizer":Lcom/sun/activation/registries/MailcapTokenizer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 312
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 316
    .local v4, "currentToken":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 317
    nop

    .line 318
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-static {v5, v4, v6}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 321
    :cond_1
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 320
    nop

    .line 322
    .local v6, "primaryType":Ljava/lang/String;
    const-string v7, "*"

    .line 326
    .local v7, "subType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 327
    const/16 v8, 0x2f

    const/16 v9, 0x3b

    if-eq v4, v8, :cond_2

    .line 328
    if-eq v4, v9, :cond_2

    .line 329
    nop

    .line 330
    nop

    .line 331
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v10

    .line 329
    invoke-static {v8, v9, v4, v10}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    .line 335
    :cond_2
    if-ne v4, v8, :cond_4

    .line 337
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 338
    if-eq v4, v5, :cond_3

    .line 339
    nop

    .line 340
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-static {v5, v4, v8}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 343
    :cond_3
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 342
    move-object v7, v8

    .line 346
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 349
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 352
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  Type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 355
    :cond_5
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 358
    .local v10, "commands":Ljava/util/Map;
    if-eq v4, v9, :cond_6

    .line 359
    nop

    .line 360
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v11

    .line 359
    invoke-static {v9, v4, v11}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 365
    :cond_6
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 366
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 367
    invoke-virtual {v2, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 368
    if-eq v4, v5, :cond_7

    .line 369
    if-eq v4, v9, :cond_7

    .line 370
    nop

    .line 371
    nop

    .line 372
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v12

    .line 370
    invoke-static {v5, v9, v4, v12}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    .line 375
    :cond_7
    if-ne v4, v5, :cond_9

    .line 378
    iget-object v12, v0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 379
    .local v12, "v":Ljava/util/List;
    if-nez v12, :cond_8

    .line 380
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 381
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v13, v0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v13, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 385
    :cond_8
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v12
    :cond_9
    :goto_0
    if-eq v4, v9, :cond_a

    .line 391
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v4

    .line 396
    :cond_a
    const/4 v12, 0x5

    if-ne v4, v9, :cond_1f

    .line 397
    move v13, v4

    move v4, v3

    .line 402
    .local v4, "isFallback":Z
    .local v13, "currentToken":I
    :goto_1
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v13

    .line 403
    if-eq v13, v5, :cond_b

    .line 404
    nop

    .line 405
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v14

    .line 404
    invoke-static {v5, v13, v14}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 407
    :cond_b
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v14

    .line 408
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 407
    nop

    .line 411
    .local v14, "paramName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v13

    .line 412
    const/16 v15, 0x3d

    if-eq v13, v15, :cond_c

    .line 413
    if-eq v13, v9, :cond_c

    .line 414
    if-eq v13, v12, :cond_c

    .line 415
    nop

    .line 416
    nop

    .line 417
    nop

    .line 418
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {v15, v9, v12, v13, v5}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIIILjava/lang/String;)V

    .line 422
    :cond_c
    if-ne v13, v15, :cond_13

    .line 426
    invoke-virtual {v2, v11}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 427
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v5

    .line 428
    .end local v13
    .local v5, "currentToken":I
    invoke-virtual {v2, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    .line 429
    const/4 v15, 0x2

    if-eq v5, v15, :cond_d

    .line 430
    nop

    .line 431
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v13

    .line 430
    invoke-static {v15, v5, v13}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    .line 434
    :cond_d
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v13

    .line 433
    nop

    .line 437
    .local v13, "paramValue":Ljava/lang/String;
    const-string v11, "x-java-"

    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 438
    const/4 v11, 0x7

    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 441
    .local v11, "commandName":Ljava/lang/String;
    const-string v15, "fallback-entry"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 442
    const-string v15, "true"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 443
    const/4 v4, 0x1

    goto :goto_2

    .line 447
    :cond_e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 448
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "    Command: "

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v12, ", Class: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 450
    :cond_f
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 451
    .local v12, "classes":Ljava/util/List;
    if-nez v12, :cond_10

    .line 452
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v15

    .line 453
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_10
    sget-boolean v15, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v15, :cond_11

    .line 456
    invoke-interface {v12, v3, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 458
    :cond_11
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v11
    .end local v12
    :cond_12
    :goto_2
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v5

    .line 465
    .end local v13
    .end local v14
    move v13, v5

    .end local v5
    .local v13, "currentToken":I
    :cond_13
    if-eq v13, v9, :cond_1e

    .line 467
    if-eqz v4, :cond_14

    iget-object v5, v0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    goto :goto_3

    :cond_14
    iget-object v5, v0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    .line 469
    .local v5, "masterHash":Ljava/util/Map;
    :goto_3
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 468
    move-object v11, v9

    .line 470
    .local v11, "curcommands":Ljava/util/Map;
    if-nez v11, :cond_15

    .line 471
    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 473
    :cond_15
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Merging commands for type "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 477
    :cond_16
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 478
    .local v12, "cn":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_19

    .line 496
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 497
    .end local v12
    .local v9, "cn":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .end local v9
    goto/16 :goto_8

    .line 498
    .restart local v9
    :cond_17
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .local v3, "cmdName":Ljava/lang/String;
    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 500
    goto :goto_5

    .line 501
    :cond_18
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 502
    .local v12, "cv":Ljava/util/List;
    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3
    .end local v12
    goto :goto_5

    .line 479
    .end local v9
    .local v12, "cn":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    .line 480
    .local v14, "cmdName":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/util/List;

    .line 481
    .local v15, "ccv":Ljava/util/List;
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 482
    .local v9, "cv":Ljava/util/List;
    if-nez v9, :cond_1a

    .line 483
    goto :goto_4

    .line 485
    :cond_1a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 486
    .local v3, "cvn":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_1b

    .line 478
    .end local v3
    .end local v9
    .end local v14
    .end local v15
    const/4 v3, 0x0

    goto :goto_4

    .line 487
    .restart local v3
    .restart local v9
    .restart local v14
    .restart local v15
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, "clazz":Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1d

    .line 489
    sget-boolean v16, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v16, :cond_1c

    .line 490
    move-object/from16 v17, v9

    const/4 v9, 0x0

    invoke-interface {v15, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 486
    .end local v0
    :goto_7
    move-object/from16 v9, v17

    move-object/from16 v0, p0

    goto :goto_6

    .line 492
    .restart local v0
    :cond_1c
    move-object/from16 v17, v9

    const/4 v9, 0x0

    .end local v9
    .local v17, "cv":Ljava/util/List;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0
    goto :goto_7

    .line 486
    .end local v17
    .restart local v9
    :cond_1d
    move-object/from16 v17, v9

    move-object/from16 v0, p0

    .end local v9
    .restart local v17
    goto :goto_6

    .line 397
    .end local v3
    .end local v5
    .end local v11
    .end local v12
    .end local v14
    .end local v15
    .end local v17
    :cond_1e
    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x5

    goto/16 :goto_1

    .line 505
    .end local v13
    .local v4, "currentToken":I
    :cond_1f
    const/4 v0, 0x5

    if-eq v4, v0, :cond_20

    .line 506
    nop

    .line 507
    nop

    .line 508
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {v0, v9, v4, v3}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    .line 510
    :cond_20
    move v13, v4

    .end local v4
    .restart local v13
    :goto_8
    return-void
.end method
