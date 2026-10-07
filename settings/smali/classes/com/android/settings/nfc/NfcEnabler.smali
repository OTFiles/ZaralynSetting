.class public Lcom/android/settings/nfc/NfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "NfcEnabler.java"


# instance fields
.field private final mPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/support/v14/preference/SwitchPreference;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 33
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0    # 0x4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 43
    :pswitch_1    # 0x3
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 45
    goto :goto_0

    .line 47
    :pswitch_2    # 0x2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 49
    goto :goto_0

    .line 39
    :pswitch_3    # 0x1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 40
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 41
    nop

    .line 55
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method
