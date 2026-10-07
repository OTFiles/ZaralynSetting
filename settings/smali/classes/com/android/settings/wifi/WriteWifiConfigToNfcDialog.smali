.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLabelView:Landroid/widget/TextView;

.field private mPasswordCheckBox:Landroid/widget/CheckBox;

.field private mPasswordView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSecurity:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsNfcConfigurationToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "security"    # I

    .line 75
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "WriteWifiConfigToNfcDialog:wakeLock"

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    iput p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 81
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .line 85
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "WriteWifiConfigToNfcDialog:wakeLock"

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    const-string v0, "security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 91
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;
    .param p1, "x1"    # Landroid/nfc/Tag;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 273
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 274
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 275
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 276
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 277
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 274
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private enableSubmitIfAppropriate()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 231
    iget v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 233
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    :cond_4
    :goto_0
    return-void
.end method

.method private handleWriteNfcEvent(Landroid/nfc/Tag;)V
    .locals 5
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 177
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 179
    .local v0, "ndef":Landroid/nfc/tech/Ndef;
    const v1, 0x7f120d94

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v1, "application/vnd.wfa.wsc"

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    .line 183
    invoke-static {v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 181
    invoke-static {v1, v2}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 185
    .local v1, "record":Landroid/nfc/NdefRecord;
    const v2, 0x7f120d81

    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    .line 186
    new-instance v3, Landroid/nfc/NdefMessage;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/nfc/NdefRecord;

    invoke-direct {v3, v1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {v0, v3}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v4, 0x7f120d99

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const v4, 0x10401c5

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 203
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 204
    .end local v1
    goto :goto_0

    .line 199
    .restart local v1
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Landroid/nfc/FormatException;
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 201
    sget-object v2, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v4, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    return-void

    .line 195
    .end local v3
    :catch_1
    move-exception v3

    .line 196
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 197
    sget-object v2, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v4, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-void

    .line 205
    .end local v1
    .end local v3
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 206
    sget-object v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v2, "Tag is not writable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 210
    sget-object v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v2, "Tag does not support NDEF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 262
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 264
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 266
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 264
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 269
    .end local v2
    :cond_0
    return-object v1
.end method

.method private setViewText(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "resid"    # I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 286
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 283
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 220
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 221
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    .line 255
    if-eqz p2, :cond_0

    .line 256
    const/16 v1, 0x90

    goto :goto_0

    .line 257
    :cond_0
    const/16 v1, 0x80

    :goto_0
    const/4 v2, 0x1

    or-int/2addr v1, v2

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "wpsNfcConfigurationToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "passwordHex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 134
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "passwordLength":Ljava/lang/String;
    :goto_0
    const-string v4, "102700%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 138
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iput-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    .line 142
    .local v4, "activity":Landroid/app/Activity;
    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    .line 144
    .local v5, "nfcAdapter":Landroid/nfc/NfcAdapter;
    new-instance v7, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 156
    iget-object v7, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v7, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 158
    iget-object v7, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    nop

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 163
    iget-object v8, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v9, 0x7f120d7a

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v8, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a02f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setTextAlignment(I)V

    .line 166
    iget-object v8, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    .end local v4
    .end local v5
    .end local v7
    goto :goto_1

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v5, 0x7f120d86

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0242

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setInverseBackgroundForced(Z)V

    .line 100
    const v2, 0x7f120cd9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setTitle(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setCancelable(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1211bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 102
    const/4 v2, -0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 115
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    .line 122
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 225
    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V

    .line 226
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 173
    const-string v0, "security"

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-void
.end method
