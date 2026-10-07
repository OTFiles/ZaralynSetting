.class public Lcom/android/settings/slices/SliceDeepLinkSpringBoard;
.super Landroid/app/Activity;
.source "SliceDeepLinkSpringBoard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static parse(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 91
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 101
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 46
    const-string v1, "DeeplinkSpringboard"

    const-string v2, "No data found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .line 48
    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->parse(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.action.VIEW_SLICE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    const-string v2, "slice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    .local v2, "slice":Landroid/net/Uri;
    sget-object v3, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .local v3, "launchIntent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 61
    .end local v3
    :cond_1
    sget-object v3, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_2
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    .line 65
    :cond_3
    sget-object v3, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    .line 68
    :cond_4
    new-instance v3, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v3, p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "slicesDatabaseAccessor":Lcom/android/settings/slices/SlicesDatabaseAccessor;
    invoke-virtual {v3, v2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v4

    .line 72
    .local v4, "sliceData":Lcom/android/settings/slices/SliceData;
    invoke-static {p0, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object v5

    .end local v3
    .end local v4
    move-object v3, v5

    .line 75
    .local v3, "launchIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v2
    .end local v3
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 79
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .end local v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DeeplinkSpringboard"

    const-string v3, "Couldn\'t launch Slice intent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .end local v1
    goto :goto_4

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "DeeplinkSpringboard"

    const-string v3, "Error decoding uri"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .line 87
    .end local v1
    :goto_3
    nop

    .line 88
    :goto_4
    return-void
.end method
