.class Lcom/android/settings/network/TetherPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 255
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 257
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    .line 258
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 262
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/TetherPreferenceController;->access$100(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 266
    .local v0, "isAirplaneMode":Z
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/TetherPreferenceController;->access$200(Lcom/android/settings/network/TetherPreferenceController;)V

    .line 273
    .end local v0
    :cond_1
    return-void
.end method
