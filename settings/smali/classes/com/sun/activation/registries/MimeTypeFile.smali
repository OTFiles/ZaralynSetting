.class public Lcom/sun/activation/registries/MimeTypeFile;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# instance fields
.field private fname:Ljava/lang/String;

.field private type_hash:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    .line 84
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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    .line 77
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "new_fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "mime_file":Ljava/io/File;
    const/4 v1, 0x0

    .line 59
    .local v1, "fr":Ljava/io/FileReader;
    iput-object p1, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sun/activation/registries/MimeTypeFile;->fname:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 63
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 66
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v2}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V

    .line 69
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 74
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v2

    .line 69
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 70
    :catch_1
    move-exception v3

    .line 73
    :goto_1
    throw v2
.end method

.method private parse(Ljava/io/BufferedReader;)V
    .locals 5
    .param p1, "buf_reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 134
    .local v1, "prev":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v1}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void

    .line 135
    :cond_1
    if-nez v1, :cond_2

    .line 136
    move-object v1, v0

    goto :goto_1

    .line 138
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 140
    .local v2, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 141
    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0, v1}, Lcom/sun/activation/registries/MimeTypeFile;->parseEntry(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .end local v2
    goto :goto_0
.end method

.method private parseEntry(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "mime_type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "file_ext":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 164
    return-void

    .line 167
    :cond_1
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_a

    .line 169
    new-instance v2, Lcom/sun/activation/registries/LineTokenizer;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/LineTokenizer;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, "lt":Lcom/sun/activation/registries/LineTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_3

    .end local v2
    goto/16 :goto_3

    .line 171
    .restart local v2
    :cond_3
    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 173
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    invoke-virtual {v2}, Lcom/sun/activation/registries/LineTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 176
    :cond_4
    if-nez v4, :cond_6

    .line 177
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad .mime.types entry: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 179
    :cond_5
    return-void

    .line 181
    :cond_6
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 182
    move-object v0, v4

    goto :goto_0

    .line 183
    :cond_7
    const-string v5, "exts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_8
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_9

    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 186
    .restart local v3
    .restart local v4
    .restart local v5
    :cond_9
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v6, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v6, v0, v1}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    nop

    .line 189
    .local v6, "entry":Lcom/sun/activation/registries/MimeTypeEntry;
    iget-object v7, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Added: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .end local v6
    goto :goto_1

    .line 198
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_a
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "strtok":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 201
    .local v3, "num_tok":I
    if-nez v3, :cond_b

    .line 202
    return-void

    .line 204
    :cond_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_c
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_d

    .line 216
    .end local v2
    .end local v3
    :goto_3
    return-void

    .line 207
    .restart local v2
    .restart local v3
    :cond_d
    const/4 v4, 0x0

    .line 209
    .local v4, "entry":Lcom/sun/activation/registries/MimeTypeEntry;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v5, Lcom/sun/activation/registries/MimeTypeEntry;

    invoke-direct {v5, v0, v1}, Lcom/sun/activation/registries/MimeTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 211
    iget-object v5, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v5, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Added: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sun/activation/registries/MimeTypeEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .end local v4
    goto :goto_2
.end method


# virtual methods
.method public appendToRegistry(Ljava/lang/String;)V
    .locals 2
    .param p1, "mime_types"    # Ljava/lang/String;

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MimeTypeFile;->parse(Ljava/io/BufferedReader;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 126
    :goto_0
    return-void
.end method

.method public getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file_ext"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;

    move-result-object v0

    .line 99
    .local v0, "entry":Lcom/sun/activation/registries/MimeTypeEntry;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/sun/activation/registries/MimeTypeEntry;->getMIMEType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMimeTypeEntry(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeEntry;
    .locals 1
    .param p1, "file_ext"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sun/activation/registries/MimeTypeFile;->type_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/activation/registries/MimeTypeEntry;

    return-object v0
.end method
