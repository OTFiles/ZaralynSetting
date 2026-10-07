.class public final Ljavax/mail/internet/InternetHeaders$InternetHeader;
.super Ljavax/mail/Header;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "InternetHeader"
.end annotation


# instance fields
.field line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Ljava/lang/String;

    .line 108
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 110
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    .line 116
    :goto_0
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 123
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz p2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 128
    :goto_0
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 4

    .line 134
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 136
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-object v1

    .line 139
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 141
    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 142
    nop

    .line 144
    .end local v2
    :goto_1
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
