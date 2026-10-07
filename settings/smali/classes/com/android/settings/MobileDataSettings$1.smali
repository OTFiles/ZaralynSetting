.class Lcom/android/settings/MobileDataSettings$1;
.super Landroid/database/ContentObserver;
.source "MobileDataSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MobileDataSettings;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 342
    iput-object p1, p0, Lcom/android/settings/MobileDataSettings$1;->this$0:Lcom/android/settings/MobileDataSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 345
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings$1;->this$0:Lcom/android/settings/MobileDataSettings;

    invoke-static {v0}, Lcom/android/settings/MobileDataSettings;->access$000(Lcom/android/settings/MobileDataSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/settings/MobileDataSettings$1;->this$0:Lcom/android/settings/MobileDataSettings;

    invoke-static {v0}, Lcom/android/settings/MobileDataSettings;->access$000(Lcom/android/settings/MobileDataSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileDataSettings$1;->this$0:Lcom/android/settings/MobileDataSettings;

    invoke-static {v1}, Lcom/android/settings/MobileDataSettings;->access$100(Lcom/android/settings/MobileDataSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 348
    :cond_0
    return-void
.end method
