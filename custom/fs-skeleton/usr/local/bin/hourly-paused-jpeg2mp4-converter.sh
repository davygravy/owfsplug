#!/bin/sh
 
# Simple Camera Image Archiver by Stephen Cropp of skcservices.com
# Copyright (C) 2011 by Stephen Cropp

# Modifications and adjustment to Stephen Cropp's script...
# Copyright (C) 2013 by David Purdy
 
# This script is released under the terms of the BSD license.
# You can find a summary and text of the license terms at the following website
# http://creativecommons.org/licenses/BSD/
 
# THIS SOFTWARE IS PROVIDED BY STEPHEN CROPP "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
# EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

lyear=$(date +%Y  )
lmonth=$(date +%m   )
ldate=$(date +%d  )
lhour=$(date +%H )

 
imagedir=/mnt
movies=/mnt/movies/


 
mkdir -p $imagedir/$lyear/$lmonth/$ldate/$lhour/

sleep 70

for event in $(ls -r -t $imagedir/$lyear/$lmonth/$ldate/$lhour/ ) ; do
	x=1;
	for f in $(ls -r -t $imagedir/$lyear/$lmonth/$ldate/$lhour/$event/*jpg); do
        	counter=$(printf %04d $x);
        	mv "$f" $imagedir/$lyear/$lmonth/$ldate/$lhour/$event/"$counter".jpg;
        	x=$(($x+1));
	done
done
ffmpeg -y  -r 4 -i $imagedir/$lyear/$lmonth/$ldate/$lhour/$event/%04d.jpg $movies/$lyear$lmonth$ldate$lhour-$event.mp4


