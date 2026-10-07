.class Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/webview/WebViewAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewAppInfo"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public loadLabel()Ljava/lang/CharSequence;
    .locals 5

    .line 128
    const-string v0, ""

    .line 130
    .local v0, "versionName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 133
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 134
    :goto_0
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
