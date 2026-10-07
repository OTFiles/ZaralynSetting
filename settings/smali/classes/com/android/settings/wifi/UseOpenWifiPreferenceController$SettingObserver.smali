.class Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "UseOpenWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 180
    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 177
    const-string v0, "network_recommendations_enabled"

    .line 178
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    .line 182
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 195
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->access$000(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->access$100(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 200
    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 187
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 190
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    return-void
.end method
