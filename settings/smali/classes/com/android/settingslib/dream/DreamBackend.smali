.class public Lcom/android/settingslib/dream/DreamBackend;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;,
        Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settingslib/dream/DreamBackend;


# instance fields
.field private final mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDreamsActivatedOnDockByDefault:Z

.field private final mDreamsActivatedOnSleepByDefault:Z

.field private final mDreamsEnabledByDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    .line 101
    const-string v0, "dreams"

    .line 102
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 103
    new-instance v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDefaultDream()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    const v1, 0x1120050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    const v1, 0x112004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x112004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    .line 110
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 290
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 291
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    return-object v0
.end method

.method private static getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 296
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 300
    :cond_0
    const/4 v1, 0x0

    .line 301
    .local v1, "cn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 302
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    move-object v3, v0

    .line 304
    .local v3, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v5, "android.service.dream"

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v2, v4

    .line 305
    if-nez v2, :cond_2

    .line 306
    const-string v4, "DreamBackend"

    const-string v5, "No android.service.dream meta-data"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 326
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 307
    :cond_1
    return-object v0

    .line 309
    :cond_2
    :try_start_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 310
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 312
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    const/4 v6, 0x2

    if-eq v7, v6, :cond_3

    .end local v7
    goto :goto_0

    .line 315
    .restart local v7
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "nodeName":Ljava/lang/String;
    const-string v8, "dream"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 317
    const-string v8, "DreamBackend"

    const-string v9, "Meta-data does not start with dream tag"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    .line 326
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 318
    :cond_4
    return-object v0

    .line 320
    :cond_5
    :try_start_2
    sget-object v8, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 321
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 322
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0

    .line 323
    :catch_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 326
    .end local v4
    if-eqz v2, :cond_7

    goto :goto_1

    .line 328
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 329
    const-string v4, "DreamBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    return-object v0

    .line 332
    :cond_8
    if-eqz v1, :cond_9

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_9
    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_3
    return-object v0

    .line 299
    .end local v1
    .end local v2
    .end local v3
    :cond_b
    :goto_4
    return-object v0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 341
    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    return-void
.end method


# virtual methods
.method public getActiveDream()Landroid/content/ComponentName;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 249
    return-object v1

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    .local v0, "dreams":[Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    :cond_1
    return-object v1

    .line 253
    .end local v0
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DreamBackend"

    const-string v3, "Failed to get active dream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    return-object v1
.end method

.method public getActiveDreamName()Ljava/lang/CharSequence;
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 151
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 152
    .local v3, "ri":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v3, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 157
    .end local v3
    :cond_0
    goto :goto_0

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, "exc":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 159
    .end local v2
    .end local v3
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDefaultDream()Landroid/content/ComponentName;
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    return-object v1

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DreamBackend"

    const-string v3, "Failed to get default dream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-object v1
.end method

.method public getDreamInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .line 113
    const-string v0, "getDreamInfos()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    .local v0, "activeDream":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "dreamIntent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v4, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/dream/DreamBackend$DreamInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 121
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    new-instance v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v7}, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;-><init>()V

    .line 124
    .local v7, "dreamInfo":Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-static {v6}, Lcom/android/settingslib/dream/DreamBackend;->getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 127
    iget-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 128
    invoke-static {v1, v6}, Lcom/android/settingslib/dream/DreamBackend;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 129
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v6
    .end local v7
    goto :goto_0

    .line 131
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    return-object v4
.end method

.method public getWhenToDreamSetting()I
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_3
    nop

    .line 166
    :goto_0
    return v1
.end method

.method public isActivatedOnDock()Z
    .locals 2

    .line 208
    const-string v0, "screensaver_activate_on_dock"

    iget-boolean v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isActivatedOnSleep()Z
    .locals 2

    .line 218
    const-string v0, "screensaver_activate_on_sleep"

    iget-boolean v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 199
    const-string v0, "screensaver_enabled"

    iget-boolean v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 3
    .param p1, "uiContext"    # Landroid/content/Context;
    .param p2, "dreamInfo"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 260
    const-string v0, "launchSettings(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void

    .line 262
    :cond_1
    :goto_0
    return-void
.end method

.method public setActivatedOnDock(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 213
    const-string v0, "setActivatedOnDock(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const-string v0, "screensaver_activate_on_dock"

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public setActivatedOnSleep(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 223
    const-string v0, "setActivatedOnSleep(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const-string v0, "screensaver_activate_on_sleep"

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "dream"    # Landroid/content/ComponentName;

    .line 236
    const-string v0, "setActiveDream(%s)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    :try_start_0
    new-array v0, v1, [Landroid/content/ComponentName;

    aput-object p1, v0, v3

    .line 241
    .local v0, "dreams":[Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 244
    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DreamBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set active dream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 203
    const-string v0, "setEnabled(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const-string v0, "screensaver_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public setWhenToDream(I)V
    .locals 3
    .param p1, "whenToDream"    # I

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 175
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 187
    :pswitch_0    # 0x2
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    .line 189
    goto :goto_1

    .line 182
    :pswitch_1    # 0x1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    .line 184
    goto :goto_1

    .line 177
    :pswitch_2    # 0x0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    .line 179
    nop

    .line 196
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public startDreaming()V
    .locals 3

    .line 279
    const-string v0, "startDreaming()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V

    .line 286
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DreamBackend"

    const-string v2, "Failed to dream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v0
    :goto_0
    return-void
.end method
