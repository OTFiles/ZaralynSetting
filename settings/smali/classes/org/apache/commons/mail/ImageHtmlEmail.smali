.class public Lorg/apache/commons/mail/ImageHtmlEmail;
.super Lorg/apache/commons/mail/HtmlEmail;
.source "ImageHtmlEmail.java"


# static fields
.field private static final IMG_PATTERN:Ljava/util/regex/Pattern;

.field public static final REGEX_IMG_SRC:Ljava/lang/String; = "(<[Ii][Mm][Gg]\\s*[^>]*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

.field public static final REGEX_SCRIPT_SRC:Ljava/lang/String; = "(<[Ss][Cc][Rr][Ii][Pp][Tt]\\s*.*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

.field private static final SCRIPT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "(<[Ii][Mm][Gg]\\s*[^>]*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/mail/ImageHtmlEmail;->IMG_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "(<[Ss][Cc][Rr][Ii][Pp][Tt]\\s*.*?\\s+[Ss][Rr][Cc]\\s*=\\s*[\"\'])([^\"\']+?)([\"\'])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/mail/ImageHtmlEmail;->SCRIPT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;-><init>()V

    return-void
.end method

.method private replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 10
    .param p1, "htmlMessage"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v1, "cidCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "dataSourceCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/activation/DataSource;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 141
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 144
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "resourceLocation":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/mail/ImageHtmlEmail;->getDataSourceResolver()Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/commons/mail/DataSourceResolver;->resolve(Ljava/lang/String;)Ljavax/activation/DataSource;

    move-result-object v5

    .line 152
    .local v5, "dataSource":Ljavax/activation/DataSource;
    if-eqz v5, :cond_1

    .line 154
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 159
    .end local v5
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/activation/DataSource;

    .line 162
    .restart local v5
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    .line 164
    invoke-interface {v5}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    move-object v6, v4

    .line 170
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 172
    .local v7, "cid":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 174
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/mail/ImageHtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    .line 182
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-virtual {v3, v0, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 184
    .end local v4
    .end local v6
    .end local v7
    :cond_4
    goto :goto_0

    .line 187
    .end local v5
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 189
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 190
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public buildMimeMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/mail/ImageHtmlEmail;->IMG_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/mail/ImageHtmlEmail;->replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "temp":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/mail/ImageHtmlEmail;->SCRIPT_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/mail/ImageHtmlEmail;->replacePattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 106
    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/ImageHtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 107
    invoke-super {p0}, Lorg/apache/commons/mail/HtmlEmail;->buildMimeMessage()V

    .line 112
    .end local v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Building the MimeMessage failed"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDataSourceResolver()Lorg/apache/commons/mail/DataSourceResolver;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/mail/ImageHtmlEmail;->dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;

    return-object v0
.end method

.method public setDataSourceResolver(Lorg/apache/commons/mail/DataSourceResolver;)V
    .locals 0
    .param p1, "dataSourceResolver"    # Lorg/apache/commons/mail/DataSourceResolver;

    .line 89
    iput-object p1, p0, Lorg/apache/commons/mail/ImageHtmlEmail;->dataSourceResolver:Lorg/apache/commons/mail/DataSourceResolver;

    .line 90
    return-void
.end method
