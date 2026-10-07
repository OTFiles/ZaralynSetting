.class Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "DockAudioMediaPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/DockAudioMediaPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/notification/DockAudioMediaPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/settings/notification/DockAudioMediaPreferenceController;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "setting"    # Ljava/lang/String;
    .param p5, "def"    # I
    .param p6, "values"    # [I

    .line 42
    iput-object p1, p0, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;->this$0:Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .line 51
    packed-switch p2, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :pswitch_0    # 0x1
    const v0, 0x7f120572

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_1    # 0x0
    const v0, 0x7f120571

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
