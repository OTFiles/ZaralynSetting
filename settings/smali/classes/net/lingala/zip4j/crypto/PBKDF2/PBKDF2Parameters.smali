.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected derivedKey:[B

.field protected hashAlgorithm:Ljava/lang/String;

.field protected hashCharset:Ljava/lang/String;

.field protected iterationCount:I

.field protected salt:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 37
    const-string v1, "UTF-8"

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 39
    const/16 v1, 0x3e8

    iput v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 40
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "hashAlgorithm"    # Ljava/lang/String;
    .param p2, "hashCharset"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "iterationCount"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 49
    iput p4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 51
    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    .line 65
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    return-object v0
.end method
