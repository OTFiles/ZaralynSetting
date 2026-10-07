.class public Lcom/readboy/store/AppUpdate/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 270
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/store/AppUpdate/Utils;->model:Ljava/lang/String;

    .line 273
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 274
    .end local v0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    .line 160
    const/16 v0, 0x2000

    .line 161
    .local v0, "BUFFER_SIZE":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 164
    .local v1, "buf":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 165
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 167
    .local v4, "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v5, v7, :cond_0

    .line 168
    invoke-virtual {v4, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 172
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 173
    .local v5, "array":[B
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v7, "sb":Ljava/lang/StringBuffer;
    nop

    .local v8, "i":I
    :goto_1
    array-length v9, v5

    if-ge v8, v9, :cond_1

    .line 175
    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 178
    .end local v8
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 179
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v2
    const-string v2, "md5bad"

    return-object v2
.end method

.method public static MD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;

    .line 133
    const/16 v0, 0x2000

    .line 134
    .local v0, "BUFFER_SIZE":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 137
    .local v1, "buf":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 140
    .local v4, "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "length":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v5, v7, :cond_0

    .line 141
    invoke-virtual {v4, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 145
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 146
    .local v5, "array":[B
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v7, "sb":Ljava/lang/StringBuffer;
    nop

    .local v8, "i":I
    :goto_1
    array-length v9, v5

    if-ge v8, v9, :cond_1

    .line 148
    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v9, v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 151
    .end local v8
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 152
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v2
    const-string v2, "md5bad"

    return-object v2
.end method

.method public static backHome(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 265
    :goto_0
    return-void
.end method

.method public static getAPKVersion(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/readboy/store/AppUpdate/Utils;->getAPKVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAPKVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    .line 40
    .local v0, "sdcardVersion":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 44
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 45
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 51
    :cond_0
    goto :goto_0

    .line 49
    .end local v2
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 52
    .end local v2
    :goto_0
    return v0
.end method

.method public static getAvailaleSize(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 218
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->getAvailaleSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailaleSize(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 211
    .local v1, "blockSize":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    .line 212
    .local v3, "availableBlocks":J
    mul-long v5, v3, v1

    return-wide v5
.end method

.method private static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 230
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 231
    .local v0, "index":I
    const-string v1, ""

    .line 232
    .local v1, "name":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 233
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 235
    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "lastIndex":I
    if-gez v2, :cond_1

    .line 237
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 241
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    return-object v1
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 222
    move-object v0, p1

    .line 223
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNullValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p0}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method public static final getFirmwareV()Ljava/lang/String;
    .locals 8

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 281
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 282
    const-string v4, "get"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 284
    .local v4, "hideMethod":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ro.readboy.version"

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .end local v4
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "Utils"

    const-string v5, "get error() "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    goto :goto_1

    .line 291
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Utils"

    const-string v5, "get error() "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    goto :goto_0

    .line 289
    :catch_2
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Utils"

    const-string v5, "get error() "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    goto :goto_0

    .line 287
    :catch_3
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Utils"

    const-string v5, "get error() "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1
    goto :goto_0

    .line 285
    :catch_4
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Utils"

    const-string v5, "get error() "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v1
    :goto_0
    nop

    .line 296
    :goto_1
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 297
    .local v1, "display":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "ext":[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 299
    array-length v5, v4

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    .line 300
    .local v5, "time":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    sub-int/2addr v7, v3

    aget-object v3, v4, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .end local v5
    goto :goto_2

    :cond_1
    array-length v5, v4

    if-lez v5, :cond_2

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    sub-int/2addr v6, v3

    aget-object v3, v4, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_2
    :goto_2
    :try_start_1
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v0, v3

    .line 312
    goto :goto_3

    .line 309
    :catch_5
    move-exception v3

    .line 310
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 311
    const-string v0, ""

    .line 313
    .end local v3
    :goto_3
    return-object v0
.end method

.method public static getNetWorkStatus(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "newStatus":Z
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 123
    .local v1, "connectManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 125
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 129
    .end local v2
    :cond_0
    return v0
.end method

.method public static install(Ljava/io/File;Landroid/content/Context;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    invoke-static {p0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 194
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 196
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 199
    .end local v2
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2
    :goto_0
    move-object v1, v2

    .line 201
    .end local v2
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    .end local v0
    .end local v1
    goto :goto_1

    .line 204
    :cond_1
    const-string v0, "file unfound"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    :goto_1
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 247
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNullValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 251
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 251
    :goto_1
    return v0
.end method
