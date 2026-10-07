.class public Lcom/readboy/encrypt/IniFile;
.super Ljava/lang/Object;
.source "IniFile.java"


# instance fields
.field private current:Ljava/util/Properties;

.field private currentSecion:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mMode:Z

.field protected sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "encrypted"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    .line 20
    const-string v0, "[default]"

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->currentSecion:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->mFileName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/encrypt/IniFile;->mMode:Z

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/readboy/encrypt/IniFile;->read(Ljava/lang/String;Z)I

    .line 27
    return-void
.end method

.method private getPropertiesString(Ljava/util/Properties;)Ljava/lang/String;
    .locals 5
    .param p1, "p"    # Ljava/util/Properties;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 254
    .local v3, "k":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 255
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .end local v2
    .end local v3
    :cond_0
    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/readboy/encrypt/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/readboy/encrypt/IniFile;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    const-string v0, ""

    return-object v0

    .line 117
    :cond_0
    if-nez p1, :cond_1

    .line 118
    const-string p1, "[default]"

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 121
    .local v0, "p":Ljava/util/Properties;
    if-nez v0, :cond_2

    .line 122
    const-string v1, ""

    return-object v1

    .line 125
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "\\[.+\\]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "\\[(.+)\\]"

    const-string v1, "$1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->currentSecion:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    goto/16 :goto_2

    .line 74
    :cond_0
    const-string v0, "[a-zA-Z_0-9.\\-]+\\s*=\\s*.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 76
    .local v0, "i":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 80
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 85
    .local v1, "j":I
    if-ltz v1, :cond_1

    .line 87
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v3
    .local v1, "value":Ljava/lang/String;
    move-object v3, v1

    .end local v1
    .restart local v3
    :goto_0
    goto :goto_1

    .line 93
    :cond_2
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 94
    if-ltz v0, :cond_3

    .line 95
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->currentSecion:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/readboy/encrypt/IniFile;->currentSecion:Ljava/lang/String;

    iget-object v5, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0
    .end local v2
    .end local v3
    :cond_4
    :goto_2
    return-void
.end method

.method public read(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "read_line":I
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    return v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/readboy/encrypt/IniFile;->mFileName:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/readboy/encrypt/IniFile;->mMode:Z

    .line 46
    if-eqz p2, :cond_1

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Lcom/readboy/encrypt/EncryptReader;

    invoke-direct {v3, p1}, Lcom/readboy/encrypt/EncryptReader;-><init>(Ljava/lang/String;)V

    const-string v4, "gbk"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 57
    .end local v1
    :catch_0
    move-exception v1

    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "gbk"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .restart local v1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-virtual {p0, v3}, Lcom/readboy/encrypt/IniFile;->parseLine(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 60
    .end local v1
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 57
    :goto_1
    nop

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const-string v2, "IniFile"

    const-string v3, "read error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1
    :goto_2
    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/readboy/encrypt/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/readboy/encrypt/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "flagAdd"    # Z

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    if-nez p1, :cond_1

    .line 151
    const-string p1, "[default]"

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 155
    .local v0, "p":Ljava/util/Properties;
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 156
    if-ne p4, v2, :cond_2

    .line 158
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    .line 159
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/readboy/encrypt/IniFile;->current:Ljava/util/Properties;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return v2

    .line 163
    :cond_2
    const-string v2, "IniFile"

    const-string v3, "not find section."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1

    .line 168
    :cond_3
    invoke-virtual {v0, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    return v2
.end method

.method public write()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/readboy/encrypt/IniFile;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/readboy/encrypt/IniFile;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/String;)Z
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 183
    return v0

    .line 185
    :cond_0
    iget-boolean v1, p0, Lcom/readboy/encrypt/IniFile;->mMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 187
    :try_start_0
    new-instance v1, Lcom/readboy/encrypt/EncryptWriter;

    invoke-direct {v1, p1}, Lcom/readboy/encrypt/EncryptWriter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "ew":Lcom/readboy/encrypt/EncryptWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 190
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    .local v5, "sectionName":Ljava/lang/String;
    iget-object v6, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Properties;

    .line 193
    .local v6, "p":Ljava/util/Properties;
    const-string v7, "[default]"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 194
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-direct {p0, v6}, Lcom/readboy/encrypt/IniFile;->getPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v5
    .end local v6
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/readboy/encrypt/EncryptWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lcom/readboy/encrypt/EncryptWriter;->flush()V

    .line 200
    invoke-virtual {v1}, Lcom/readboy/encrypt/EncryptWriter;->close()V

    .line 201
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 202
    .end local v1
    .end local v3
    .end local v4
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v1
    return v0

    .line 210
    :cond_3
    const/4 v1, 0x0

    .line 212
    .local v1, "writer":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 216
    :cond_4
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v7, "gbk"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v4

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v4, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 219
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    .local v6, "sectionName":Ljava/lang/String;
    iget-object v7, p0, Lcom/readboy/encrypt/IniFile;->sections:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Properties;

    .line 222
    .local v7, "p":Ljava/util/Properties;
    const-string v8, "[default]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 223
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_5
    invoke-direct {p0, v7}, Lcom/readboy/encrypt/IniFile;->getPropertiesString(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v6
    .end local v7
    goto :goto_1

    .line 227
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 229
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 230
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 231
    .end local v3
    .end local v4
    .end local v5
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    const-string v3, "IniFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write error("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v2
    if-eqz v1, :cond_7

    .line 236
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 238
    :cond_7
    return v0
.end method
