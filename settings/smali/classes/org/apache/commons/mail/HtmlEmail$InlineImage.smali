.class Lorg/apache/commons/mail/HtmlEmail$InlineImage;
.super Ljava/lang/Object;
.source "HtmlEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/mail/HtmlEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineImage"
.end annotation


# instance fields
.field private final cid:Ljava/lang/String;

.field private final dataSource:Ljavax/activation/DataSource;

.field private final mbp:Ljavax/mail/internet/MimeBodyPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "dataSource"    # Ljavax/activation/DataSource;
    .param p3, "mbp"    # Ljavax/mail/internet/MimeBodyPart;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    .line 649
    iput-object p2, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->dataSource:Ljavax/activation/DataSource;

    .line 650
    iput-object p3, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->mbp:Ljavax/mail/internet/MimeBodyPart;

    .line 651
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 691
    if-ne p0, p1, :cond_0

    .line 693
    const/4 v0, 0x1

    return v0

    .line 695
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    if-nez v0, :cond_1

    .line 697
    const/4 v0, 0x0

    return v0

    .line 700
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 702
    .local v0, "that":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/activation/DataSource;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->dataSource:Ljavax/activation/DataSource;

    return-object v0
.end method

.method public getMbp()Ljavax/mail/internet/MimeBodyPart;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->mbp:Ljavax/mail/internet/MimeBodyPart;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
