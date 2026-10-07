.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsHeaderController.java"


# instance fields
.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 42
    const-string v0, "usb_device_header"

    .line 43
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 44
    .local v0, "headerPreference":Lcom/android/settings/applications/LayoutPreference;
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 45
    const v3, 0x7f0a0169

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 44
    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 46
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "usb_device_header"

    return-object v0
.end method

.method protected refresh(ZJII)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 51
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mContext:Landroid/content/Context;

    const v2, 0x7f120f54

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 52
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mContext:Landroid/content/Context;

    const v2, 0x7f080229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 54
    return-void
.end method
