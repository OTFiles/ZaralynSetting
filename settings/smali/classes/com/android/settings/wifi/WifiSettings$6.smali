.class Lcom/android/settings/wifi/WifiSettings$6;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettings;

    .line 1297
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$6;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$6;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1301
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1302
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 1304
    :cond_0
    return-void
.end method
