.class final Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 1

    .line 225
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    .line 226
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 227
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 231
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAccessSettings;->access$000(Lcom/android/settings/notification/ZenAccessSettings;)V

    .line 232
    return-void
.end method
