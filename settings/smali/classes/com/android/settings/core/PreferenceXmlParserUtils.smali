.class public Lcom/android/settings/core/PreferenceXmlParserUtils;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"


# static fields
.field static final PREF_SCREEN_TAG:Ljava/lang/String; = "PreferenceScreen"

.field private static final SUPPORTED_PREF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const-string v0, "Preference"

    const-string v1, "PreferenceCategory"

    const-string v2, "PreferenceScreen"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    return-void
.end method

.method public static extractMetadata(Landroid/content/Context;II)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlResId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "metadata":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-gtz p1, :cond_0

    .line 179
    const-string v1, "PreferenceXmlParserUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 185
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v3, v4, :cond_1

    .end local v3
    goto :goto_0

    .line 189
    .restart local v3
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 192
    .local v2, "outerDepth":I
    :cond_2
    if-eq v3, v4, :cond_3

    .line 193
    goto/16 :goto_1

    .line 195
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "nodeName":Ljava/lang/String;
    invoke-static {p2, v5}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "PreferenceScreen"

    .line 197
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    goto/16 :goto_1

    .line 200
    :cond_4
    sget-object v7, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Preference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 201
    goto/16 :goto_1

    .line 203
    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v7, "preferenceMetadata":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 205
    .local v8, "attrs":Landroid/util/AttributeSet;
    sget-object v9, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 208
    .local v9, "preferenceAttributes":Landroid/content/res/TypedArray;
    const/4 v10, 0x4

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 209
    const-string v10, "type"

    invoke-virtual {v7, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_6
    invoke-static {p2, v4}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 212
    const-string v10, "key"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_7
    const/16 v10, 0x8

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 215
    const-string v10, "controller"

    .line 216
    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getController(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    .line 215
    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_8
    const/16 v10, 0x10

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 219
    const-string v10, "title"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_9
    const/16 v10, 0x20

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 222
    const-string v10, "summary"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_a
    const/16 v10, 0x40

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 225
    const-string v10, "icon"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getIcon(Landroid/content/res/TypedArray;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    :cond_b
    const/16 v10, 0x80

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 228
    const-string v10, "platform_slice"

    .line 229
    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getPlatformSlice(Landroid/content/res/TypedArray;)Z

    move-result v11

    .line 228
    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :cond_c
    const/16 v10, 0x100

    invoke-static {p2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 232
    const-string v10, "keywords"

    invoke-static {v9}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_d
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v3, v6

    if-eq v6, v5, :cond_e

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 238
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-gt v6, v2, :cond_2

    .line 239
    :cond_e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 240
    return-object v0
.end method

.method private static getController(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 303
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIcon(Landroid/content/res/TypedArray;)I
    .locals 1
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method private static getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 291
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1
    .param p0, "styleAttributes"    # Landroid/content/res/TypedArray;

    .line 315
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPlatformSlice(Landroid/content/res/TypedArray;)Z
    .locals 2
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 311
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-object v1
.end method

.method private static getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 299
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;

    .line 295
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "flag"    # I

    .line 264
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
