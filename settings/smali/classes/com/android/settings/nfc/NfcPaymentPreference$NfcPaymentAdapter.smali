.class Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 140
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 141
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 1
    .param p1, "i"    # I

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .line 161
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    .line 168
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    if-nez p2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$000(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 171
    new-instance v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V

    .line 172
    .local v1, "holder":Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    const v2, 0x7f0a0076

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 173
    const v2, 0x7f0a00ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 174
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    .end local v1
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    .line 178
    .restart local v1
    :goto_0
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 186
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 189
    return-object p2
.end method

.method makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 210
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->access$100(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 214
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 199
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 200
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 206
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 207
    return-void
.end method

.method public updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0
    .param p1, "appInfos"    # [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .param p2, "currentDefault"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 145
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method
