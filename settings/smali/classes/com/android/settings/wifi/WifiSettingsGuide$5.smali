.class Lcom/android/settings/wifi/WifiSettingsGuide$5;
.super Ljava/lang/Object;
.source "WifiSettingsGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 567
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsGuide$5;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$5;->this$0:Lcom/android/settings/wifi/WifiSettingsGuide;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->checkWhetherAddDataSwitchPreference()V

    .line 571
    return-void
.end method
