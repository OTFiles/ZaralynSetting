.class public Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"


# static fields
.field public static final WIFI_CALLING_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 86
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 87
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wifi_calling"

    .line 88
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->WIFI_CALLING_URI:Landroid/net/Uri;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "sliceUri"    # Landroid/net/Uri;
    .param p4, "primaryActionIntent"    # Landroid/app/PendingIntent;

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0802f8

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 270
    .local v0, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p3, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 271
    const v2, 0x7f0600a7

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->setColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$6JNBI7DQgipwzIQhGGlqsYB5PlI;

    invoke-direct {v2, p1, p2, p4, v0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$6JNBI7DQgipwzIQhGGlqsYB5PlI;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;)V

    .line 272
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v1

    .line 270
    return-object v1
.end method

.method public static getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getSimCarrierName()Ljava/lang/String;
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 371
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 372
    .local v1, "carrierName":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f12036f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 375
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWifiCallingSlice(Landroid/net/Uri;Landroid/content/Context;Z)Landroidx/slice/Slice;
    .locals 5
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "isWifiCallingEnabled"    # Z

    .line 190
    const v0, 0x7f0802f8

    invoke-static {p2, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 191
    .local v0, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    const v1, 0x7f121076

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    const-wide/16 v3, -0x1

    invoke-direct {v2, p2, p1, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 193
    const v3, 0x7f0600a7

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder;->setColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;

    invoke-direct {v3, p0, v1, p3, v0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;)V

    .line 194
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v2

    .line 192
    return-object v2
.end method

.method private isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z
    .locals 7
    .param p1, "imsManager"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 174
    .local v0, "isWifiOnTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 175
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 178
    .local v3, "isWifiEnabledByUser":Ljava/lang/Boolean;
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Boolean;

    .line 180
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method static synthetic lambda$getNonActionableWifiCallingSlice$1(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "primaryActionIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p4, "b"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 272
    nop

    .line 273
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/SliceAction;

    invoke-direct {v1, p2, p3, p0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 272
    return-void
.end method

.method public static synthetic lambda$getWifiCallingSlice$0(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "isWifiCallingEnabled"    # Z
    .param p3, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p4, "b"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 194
    nop

    .line 195
    invoke-virtual {p4, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/SliceAction;

    const-string v2, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    .line 198
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/SliceAction;

    const-string v2, "android.settings.WIFI_CALLING_SETTINGS"

    .line 201
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, v2, p3, p1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 194
    return-void
.end method


# virtual methods
.method public createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 9
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    .line 118
    .local v0, "subId":I
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSimCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "carrierName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f12106e

    const v5, 0x7f121076

    const/4 v6, -0x1

    if-gt v0, v6, :cond_0

    .line 121
    const-string v6, "WifiCallingSliceHelper"

    const-string v7, "Invalid subscription Id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v6, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 124
    invoke-virtual {v6, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 122
    invoke-direct {p0, v5, v2, p1, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v6

    .line 130
    .local v6, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z

    move-result v2

    .line 141
    .local v2, "isWifiCallingEnabled":Z
    nop

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 146
    .local v3, "activationAppIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 147
    const-string v4, "WifiCallingSliceHelper"

    const-string v7, "Needs Activation"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f121075

    .line 152
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.settings.WIFI_CALLING_SETTINGS"

    .line 154
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 150
    invoke-direct {p0, v4, v7, p1, v8}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object v4

    return-object v4

    .line 156
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v4, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingSlice(Landroid/net/Uri;Landroid/content/Context;Z)Landroidx/slice/Slice;

    move-result-object v4

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 157
    .end local v2
    .end local v3
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WifiCallingSliceHelper"

    const-string v4, "Unable to read the current WiFi calling status"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f121079

    .line 161
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.WIFI_CALLING_SETTINGS"

    .line 162
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 159
    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object v3

    return-object v3

    .line 132
    .end local v2
    :cond_3
    :goto_0
    const-string v7, "WifiCallingSliceHelper"

    const-string v8, "Wifi calling is either not provisioned or not enabled by Platform"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v7, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 135
    invoke-virtual {v7, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 133
    invoke-direct {p0, v5, v2, p1, v3}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method protected getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 298
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    return-object v0
.end method

.method protected getDefaultVoiceSubId()I
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 308
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method protected getImsManager(I)Lcom/android/ims/ImsManager;
    .locals 2
    .param p1, "subId"    # I

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method protected getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;
    .locals 5
    .param p1, "subId"    # I

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    .line 317
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    return-object v1

    .line 321
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 322
    .local v2, "bundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_1

    .line 323
    return-object v1

    .line 326
    :cond_1
    const-string v3, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "carrierApp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    return-object v1

    .line 332
    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 333
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_3

    .line 334
    return-object v1

    .line 337
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 339
    return-object v1
.end method

.method public handleWifiCallingChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    .line 233
    .local v0, "subId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 235
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    :cond_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 239
    .local v3, "currentValue":Z
    :goto_0
    const-string v4, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 241
    .local v4, "newValue":Z
    nop

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v5

    .line 243
    .local v5, "activationAppIntent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 246
    :cond_2
    if-eq v4, v3, :cond_3

    .line 247
    invoke-virtual {v2, v4}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 254
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_3
    const-string v2, "wifi_calling"

    invoke-static {v2, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    return-void
.end method
