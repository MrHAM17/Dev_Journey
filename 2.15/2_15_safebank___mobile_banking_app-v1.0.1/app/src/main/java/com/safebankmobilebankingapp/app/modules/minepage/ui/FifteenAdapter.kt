package com.safebankmobilebankingapp.app.modules.minepage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowFifteenBinding
import com.safebankmobilebankingapp.app.modules.minepage.`data`.model.FifteenRowModel
import kotlin.Int
import kotlin.collections.List

class FifteenAdapter(
  var list: List<FifteenRowModel>
) : RecyclerView.Adapter<FifteenAdapter.RowFifteenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFifteenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_fifteen,parent,false)
    return RowFifteenVH(view)
  }

  override fun onBindViewHolder(holder: RowFifteenVH, position: Int) {
    val fifteenRowModel = FifteenRowModel()
    // TODO uncomment following line after integration with data source
    // val fifteenRowModel = list[position]
    holder.binding.fifteenRowModel = fifteenRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FifteenRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: FifteenRowModel
    ) {
    }
  }

  inner class RowFifteenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFifteenBinding = RowFifteenBinding.bind(itemView)
  }
}
