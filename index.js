import express from 'express';
import Hello from './routes/hello.js';
// import scrape from './routes/scrape.js';
// import prices from './routes/prices.js';
// import car4cash from './routes/car4cash.js';
// import getPrice from './routes/getPrice.js';
// import motto from './routes/motto.js';
import mottoAuction from './routes/motto-auction.js';
// import roddonjai from './routes/roddonjai.js';

const app = express();
const port = 3000;

app.use(express.json());
app.use('/', Hello);
// app.use('/scrape', scrape);
// app.use('/api', prices);
// app.use('/update-car4cash', car4cash);
// app.use('/get-price', getPrice);
// app.use('/motto', motto);
app.use('/motto-auction', mottoAuction);
// app.use('/roddonjai', roddonjai);

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port} 🚀`);
});