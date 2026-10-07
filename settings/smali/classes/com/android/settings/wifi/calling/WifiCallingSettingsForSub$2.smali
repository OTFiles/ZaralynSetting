.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;
.super Ljava/lang/Object;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "carrierAppIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    const-string v2, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivity(Landroid/content/Intent;)V

    .line 149
    :cond_0
    return v1
.end method
